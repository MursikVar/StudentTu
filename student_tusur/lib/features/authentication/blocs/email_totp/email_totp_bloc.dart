import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';

part 'email_totp_bloc.freezed.dart';
part 'email_totp_event.dart';
part 'email_totp_state.dart';

@injectable
class EmailTotpBloc extends Bloc<EmailTotpEvent, EmailTotpState> {
  final AuthenticationRepository _authRepository;
  String? _lastSentCode;

  EmailTotpBloc(this._authRepository) : super(const EmailTotpState.initial()) {
    on<_EmailTotpSendCode>(_onSendCode);
    on<_EmailTotpVerifyCode>(_onVerifyCode);
  }

  Future<void> _onSendCode(
    _EmailTotpSendCode event,
    Emitter<EmailTotpState> emit,
  ) async {
    emit(const EmailTotpState.loading());
    try {
      final code = await _authRepository.sendCode(event.email, event.password);
      print( code);
      _lastSentCode = code;
      emit(const EmailTotpState.codeSent());
    } catch (e) {
      emit(const EmailTotpState.failure('Ошибка отправки кода'));
    }
  }

  Future<void> _onVerifyCode(
  _EmailTotpVerifyCode event,
  Emitter<EmailTotpState> emit,
) async {
  emit(const EmailTotpState.loading());
  try {
    if (_lastSentCode == null) {
      emit(const EmailTotpState.failure('Сначала запросите код'));
      return;
    }
    if (event.code != _lastSentCode) {
      emit(const EmailTotpState.failure('Неверный код'));
      return;
    }
    await _authRepository.signInWithCredentials(event.email, event.password);
    emit(const EmailTotpState.success());
  } catch (e) {
    print('Ошибка при входе: $e');
    emit(EmailTotpState.failure('Ошибка входа: ${e.toString()}'));
  }
}
}