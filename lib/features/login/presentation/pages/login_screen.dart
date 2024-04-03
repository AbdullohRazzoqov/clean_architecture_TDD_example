import 'package:clean_architecture_tdd_example/core/resources/state_status.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/entities/login_request.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/use_cases/login_use_cases.dart';
import 'package:clean_architecture_tdd_example/features/login/presentation/manager/login/bloc/login_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  late LoginScreenBloc _loginScreenBloc;

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    _loginScreenBloc = LoginScreenBloc(
      LoginUseCase(
        authRepo: context.read(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginScreenBloc,
      child: Scaffold(
        body: BlocListener<LoginScreenBloc, LoginScreenState>(
          listener: (context, state) {
            if (state.status == StateStatus.success) {
            //push new screen
            }
          },
          child: BlocBuilder<LoginScreenBloc, LoginScreenState>(
            builder: (context, state) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text('Login Screen'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: _phoneController,
                          decoration: const InputDecoration(
                            labelText: 'raqam',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                  if (state.status == StateStatus.loading) ...{
                    Positioned.fill(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                  }
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _loginScreenBloc.add(
              const SignIn(
                loginRequest: LoginRequest(
                  phone: '998901234567',
                  password: 'admin123',
                  branchId: 1,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
