part of 'login_bloc.dart';

/// Класс описывающий возможные состояния класса [LoginBloc].
@freezed
class LoginState with _$LoginState {
  const LoginState._();

  /// Начальное состояние.
  const factory LoginState.initial() = _LoginInitial;

  /// Пользователь находится в процессе аутентификации.
  const factory LoginState.authenticating() = _LoginAuthenticating;

  /// Пользователь успешно прошел аутентификацию.
  const factory LoginState.success() = _LoginSuccess;

  const factory LoginState.codeSent(String email,  String password) = _LoginCodeSent;

  /// Пользователь не прошел аутентификацию с причиной указанной в строке.
  const factory LoginState.fail({
    required String message,
  }) = _LoginFail;

  /// Возвращает true если состояние соответвует
  /// значению [LoginState.authenticating]
  bool get isAuthenticating {
    return maybeWhen(
      authenticating: () => true,
      orElse: () => false,
    );
  }
}
