
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_totp.freezed.dart';

part 'email_totp.g.dart';

@freezed
abstract class EmailTotpResponse with _$EmailTotpResponse{
    const factory EmailTotpResponse({
      @JsonKey(name: 'code') required String code,
    }) = _EmailTotpResponse;

    factory EmailTotpResponse.fromJson(Map<String, dynamic> json) => _$EmailTotpResponseFromJson(json);
} 