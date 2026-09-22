import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/shared/exceptions/exceptions.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository _authenticationRepository;

  LoginBloc(this._authenticationRepository)
    : super(const LoginState.initial()) {
    on<_LoginSubmitted>(_onSubmitted);
  }

  // Future<void> _onSubmitted(
  //   _LoginSubmitted event,
  //   Emitter<LoginState> emit,
  // ) async {
  //   emit(const LoginState.authenticating());
  //   try {
  //     print('🔵 Отправка кода на почту: ${event.email}');
  //     await _authenticationRepository.sendCode(event.email, event.password);
  //     emit(LoginState.codeSent(event.email, event.password));
  //   } on InvalidCredentialsException catch (_) {
  //     emit(LoginState.fail(message: $.invalidCredentials));
  //   } on ConnectivityException catch (_) {
  //     emit(LoginState.fail(message: $.connectivityProblems));
  //     // } catch (e) {
  //     //   print('🔴 Ошибка в LoginBloc: $e');
  //     //   emit(LoginState.fail(message: $.unexpectedError));
  //     // }
  //   } catch (e, s) {
  //     print('🔴 Ошибка в LoginBloc: $e');
  //     print('📚 Stack trace: $s');
  //     emit(LoginState.fail(message: $.unexpectedError));
  //   }
  // }
  
  Future<void> _onSubmitted(
    _LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.authenticating());
    // Просто эмитим, что можно переходить на страницу ввода кода.
    // Отправка кода произойдёт на самой странице EmailTotpPage.
    emit(LoginState.codeSent(event.email, event.password));
  }
}
