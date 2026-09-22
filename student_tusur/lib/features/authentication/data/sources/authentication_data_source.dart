import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:marketplace/shared/dto/account_body_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../shared/dto/photo_response_dto.dart';
import '../../model/email_totp_model/email_totp.dart';

part 'authentication_data_source.g.dart';

@Injectable()
@RestApi()
abstract class AuthenticationDataSource {
  @factoryMethod
  factory AuthenticationDataSource(
    Dio dio,
  ) = _AuthenticationDataSource;

  @POST('/auth/by-login')
  Future<HttpResponse<dynamic>> login(
    @Field('login') String login,
    @Field('password') String password,
  );

  @POST('/api/v1/user/restore-password')
  Future<HttpResponse<dynamic>> restorePassword(
    @Body() AccountRequestDto request,
  );

  @PATCH('/auth/token')
  Future<HttpResponse<dynamic>> refreshToken();

  /* =====================================================*/

  @POST('/totp/send-email')
  Future<HttpResponse<EmailTotpResponse>> sendCode(
    @Body() Map<String, String> body,
  );

  @GET('/api/v1/student/{id}/photo')
  Future<HttpResponse<PhotoResponseDto>> getStudentPhoto(
    @Path('id') int id
  );
}
