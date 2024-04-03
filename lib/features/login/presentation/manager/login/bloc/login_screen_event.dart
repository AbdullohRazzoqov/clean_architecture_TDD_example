part of 'login_screen_bloc.dart';

abstract class LoginScreenEvent  {
  const LoginScreenEvent();
}

class SignIn extends LoginScreenEvent {
  final LoginRequest loginRequest;

  const SignIn({
    required this.loginRequest,
  });
}
