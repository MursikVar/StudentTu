import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';
import 'package:marketplace/utilities/logger.dart';

part 'recover_bloc.freezed.dart';
part 'recover_event.dart';
part 'recover_state.dart';

@injectable
class RecoverBloc extends Bloc<RecoverEvent, RecoverState> {
  final AuthenticationRepository _authenticationRepository;

  RecoverBloc(this._authenticationRepository)
      : super(const RecoverState.initial()) {
    on<_RecoverSubmitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(
    _RecoverSubmitted event,
    Emitter<RecoverState> emit,
  ) async {
    try {
      emit(const RecoverState.loading());
      await _authenticationRepository.requestAccountRecovery(event.email);
      emit(RecoverState.success(event.email));
    } catch (e, s) {
      logger.severe(e, '', s);
      emit(const RecoverState.failure());
    }
  }
}
