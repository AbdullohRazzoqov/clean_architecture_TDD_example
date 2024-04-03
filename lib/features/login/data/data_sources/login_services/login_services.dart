import 'package:clean_architecture_tdd_example/core/network/urls.dart';
import 'package:clean_architecture_tdd_example/features/login/data/models/dto/login_dto/login_response_dto.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'login_services.g.dart';

@RestApi(baseUrl: Urls.baseURl)
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;
  @POST("/login")
  Future<HttpResponse<LoginResponseDto>> login(
      @Body() LoginRequest loginRequest,
      );
   
}
