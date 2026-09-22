import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/data/sources/authentication_data_source.dart';
import 'package:marketplace/features/authentication/model/session.dart';
import 'package:marketplace/services/storage/hive_extension.dart';
import 'package:marketplace/shared/dto/account_body_dto.dart';
import 'package:marketplace/shared/exceptions/exceptions.dart';
import 'package:retrofit/dio.dart';

// ==========================================================================
import 'dart:convert';
import 'package:flutter/widgets.dart';
// ==========================================================================

const _kPairKey = 'session';
const _kTokenLifetime = Duration(days: 365);

/// Исключение выбрасываемое приложением в ситуациях когда пользователь с
/// указанными учетными данными не найден.
class InvalidCredentialsException extends BaseException {
  InvalidCredentialsException();
}

/// Репозиторий аутентификации. Предоставляет доступ к текущей сессии
/// пользователя, удаления и создании новой.
@Singleton()
class AuthenticationRepository {
  Session? _session;
  final Box<dynamic> _localStorage;
  final AuthenticationDataSource _dataSource;
  final StreamController<Session?> _controller = StreamController.broadcast();
  final Logger _logger = Logger('Auth');

  AuthenticationRepository(
    this._localStorage,
    this._dataSource,
  ) {
    _logger.finest('initialize service');
    _session = _localStorage.getObject(_kPairKey, Session.fromJson);
    _logger.finest('current session: ${_session?.toJson()}');
  }

  /// Возвращает текущую сессию если она существует.
  Session? get currentSession {
    return _session;
  }

  /// Возвращает поток позволяющий прослушивать изменения сессии.
  Stream<Session?> get session {
    return _controller.stream;
  }

  /// Удаляет текущую сессию если она существует и оповещает всех слушателей.
  Future<void> deleteSession() async {
    if (_session == null) return;
    await _updateSession(null);
  }

  /// Обновляет текущую сессию и оповещает всех слушателей.
  Future<Session?> refreshSession() async {
    try {
      _logger.finest('try to refresh a session');
      final source = AuthenticationDataSource(inject(instanceName: 'client'));
      final response = await source.refreshToken();
      return await _extractAndUpdateSession(response);
    } on ConnectivityException catch (_) {
      rethrow;
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        if (e.response!.statusCode == HttpStatus.badRequest) {
          throw InvalidCredentialsException();
        }
      }
      throw UnexpectedException();
    }
  }

  /// Формирует запрос на восстановление доступа к аккаунту с использованием
  /// указанного [email] в качестве почтового адреса.
  Future<void> requestAccountRecovery(String email) async {
    final request = AccountRequestDto(user: AccountBodyDto(email: email));
    await _dataSource.restorePassword(request);
  }

  /// Осуществляет попытку логина пользователя с указанными почтовым адресом и
  /// паролем. В случае успеха возвращает вновь созданную сессию.
  Future<Session> signInWithCredentials(String email, String password) async {
    try {
      // _logger.finest('try to login for: $email');
      final response = await _dataSource.login(email, password);
      return await _extractAndUpdateSession(response);
    } on ConnectivityException catch (_) {
      rethrow;
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        if (e.response!.statusCode == HttpStatus.badRequest) {
          throw InvalidCredentialsException();
        }
      }
      throw UnexpectedException();
    }
  }

  Future<Session> _extractAndUpdateSession(
    HttpResponse<dynamic> response,
  ) async {
    if (response.response.statusCode != HttpStatus.noContent) {
      throw UnexpectedException();
    }

    final token = response.response.headers['Token']?.first ?? '';
    if (token.isEmpty) {
      _logger.severe('invalid token received');
      throw UnexpectedException();
    }

    final session = Session(
      expiresOn: DateTime.now().add(_kTokenLifetime),
      accessToken: token,
      refreshToken: '',
    )..decodeAccessToken(); // проверка что токен содержит информацию о студенте
    await _updateSession(session);
    return session;
  }

  /// Осуществляет попытку восстановления доступа пользователю с указанными
  /// уникальной ссылкой и новым паролем. В случае успеха возвращает вновь
  /// созданную сессию.
  Future<void> signInWithRecoveryLink(String link, String password) async {
    // TODO: нет реализации, в текущей версии решили отказаться от восстановления пароля по ссылке
  }

  Future<void> _updateSession(Session? newSession) async {
    _logger.finest('updating session');
    _logger.finest('old one: ${_session?.toJson()}');
    _logger.finest('new one: ${newSession?.toJson()}');
    if (newSession == null) {
      await _localStorage.delete(_kPairKey);
      await _localStorage.clear();
    } else {
      await _localStorage.putObject(_kPairKey, newSession.toJson());
    }
    _session = newSession;
    _controller.sink.add(newSession);
  }

  /*==================================================================================== */

  Future<ImageProvider> getProfileAvatar(int id) async {
    try {
      final response = await _dataSource.getStudentPhoto(id);
      final base64 = response.data.base64Data;
      final pureBase64 =
          base64.replaceFirst(RegExp(r'^data:image/[a-zA-Z]+;base64,'), '');
      final bytes = base64Decode(pureBase64);
      return MemoryImage(bytes);
    } catch (e) {
      rethrow;
    }
  }

  // ===============================================================================================

  Future<String> sendCode(String email, String password) async {
    try {
      final response =
          await _dataSource.sendCode({'email': email, 'password': password});
      return response.data.code;
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse &&
          (e.response?.statusCode == 400 ||
              e.response?.statusCode == 401 ||
              e.response?.statusCode == 403)) {
        throw InvalidCredentialsException();
      }
      throw UnexpectedException();
    } catch (e) {
      throw UnexpectedException();
    }
  }
}
