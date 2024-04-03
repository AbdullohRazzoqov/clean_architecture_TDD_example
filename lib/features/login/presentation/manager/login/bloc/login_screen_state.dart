part of 'login_screen_bloc.dart';

class LoginScreenState  {
  final bool isLoggedIn;
  final StateStatus status;

  const LoginScreenState({
    this.isLoggedIn = false,
    this.status = StateStatus.normal,
  });

  LoginScreenState copyWith({
    bool? isLoggedIn,
    StateStatus? status,
  }) =>
      LoginScreenState(
        status: status ?? this.status,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      );
}
