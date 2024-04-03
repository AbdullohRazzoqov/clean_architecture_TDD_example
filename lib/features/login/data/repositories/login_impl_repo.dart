import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/repositories/login_repositories.dart';

import '../data_sources/login_services/login_services.dart';

class LoginImplRepo extends LoginRepo {
  final LoginService loginService;
  LoginImplRepo({
    required this.loginService,
  });

  @override
  Future<bool> login(LoginRequest loginRequest) async {
    await loginService.login(loginRequest).then((value) => value.data);
    return true;
  }
}
