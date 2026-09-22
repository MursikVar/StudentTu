import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
abstract class Session with _$Session {
  const Session._();

  const factory Session({
    /// Дата и время экспирации данной сессии.
    required DateTime expiresOn,

    /// Токен используемый для аутентификации на сервере.
    required String accessToken,

    /// Токен используемый для обновления [accessToken].
    required String refreshToken,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  /// Возвращает [true] если время жизни данной сессии истекло.
  bool get isExpired {
    return DateTime.now().toUtc().isAfter(expiresOn);
  }

  /// Возвращает содержимое [accessToken] представляющего собой объект JSON.
  Map<String, dynamic> decodeAccessToken() {
    try {
      final tokenParts = accessToken.split('.');
      final payload = base64.normalize(tokenParts[1]);
      final json = utf8.decode(base64.decode(payload));
      final map = jsonDecode(json) as Map<String, dynamic>;

      if (map['contingentPersonId'] == null) {
        throw InvalidCredentialsException();
      }

      return map;
    } catch (e) {
      throw InvalidCredentialsException();
    }
  }
}
