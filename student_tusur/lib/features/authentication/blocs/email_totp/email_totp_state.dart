part of 'email_totp_bloc.dart';

@freezed
class EmailTotpState with _$EmailTotpState {
  const factory EmailTotpState.initial() = _EmailTotpInitial;
  const factory EmailTotpState.loading() = _EmailTotpLoading;
  const factory EmailTotpState.codeSent() = _EmailTotpCodeSent;
  const factory EmailTotpState.success() = _EmailTotpSuccess;
  const factory EmailTotpState.failure(String error) = _EmailTotpFailure;
}