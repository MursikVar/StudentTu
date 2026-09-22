part of 'email_totp_bloc.dart';

@freezed
abstract class EmailTotpEvent with _$EmailTotpEvent {
  const factory EmailTotpEvent.sendCode(String email, String password) = _EmailTotpSendCode;
  const factory EmailTotpEvent.verifyCode(String email, String password, String code) = _EmailTotpVerifyCode;
}