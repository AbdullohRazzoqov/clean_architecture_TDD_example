
import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';

abstract class LoginRepo {
  Future<bool> login(LoginRequest loginRequest);
}
