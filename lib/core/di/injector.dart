import 'package:clean_architecture_tdd_example/core/di/locator.dart';
import 'package:clean_architecture_tdd_example/features/login/data/data_sources/login_services/login_services.dart';
import 'package:clean_architecture_tdd_example/features/login/data/repositories/login_impl_repo.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/repositories/login_repositories.dart';
import 'package:clean_architecture_tdd_example/features/login/presentation/manager/login/bloc/login_screen_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Injector extends StatelessWidget {
  final Widget child;

  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        ..._getLoginRepo(),
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => LoginScreenBloc(context.read()))
      ], child: child),
    );
  }

  _getLoginRepo() => [
        RepositoryProvider<LoginService>(
          create: (context) => LoginService(locator<Dio>()),
        ),
        RepositoryProvider<LoginRepo>(
          create: (context) => LoginImplRepo(
            loginService: context.read(),
          ),
        ),
      ];
}
