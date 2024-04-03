import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/repositories/login_repositories.dart';

class LoginUseCase {
  final LoginRepo authRepo;

  const LoginUseCase({
    required this.authRepo,
  });

  Future<bool> login(LoginRequest loginRequest) async {
    return await authRepo.login(loginRequest);
  }
}
