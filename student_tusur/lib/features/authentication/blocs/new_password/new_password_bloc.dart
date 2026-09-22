import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';

part 'new_password_bloc.freezed.dart';
part 'new_password_event.dart';
part 'new_password_state.dart';

@injectable
class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {
  final AuthenticationRepository _authenticationRepository;

  NewPasswordBloc(this._authenticationRepository)
      : super(const NewPasswordState.initial()) {
    on<_NewPasswordSubmitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(
      _NewPasswordSubmitted event, Emitter<NewPasswordState> emit) async {
    try {
      emit(const NewPasswordState.loading());
      await _authenticationRepository.signInWithRecoveryLink(
        event.link,
        event.password,
      );
      emit(const NewPasswordState.success());
    } catch (_) {
      emit(const NewPasswordState.failure());
    }
  }
}
