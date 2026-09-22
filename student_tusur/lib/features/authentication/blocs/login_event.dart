part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  /// Событие инициирующее процесс аутентификации пользователя с
  /// указанными почтовым адресом и паролем.
  const factory LoginEvent.submitted({
    required String email,
    required String password,
  }) = _LoginSubmitted;
}
