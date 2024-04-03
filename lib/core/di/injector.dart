import 'package:clean_architecture_tdd_example/features/login/data/data_sources/login_services/login_services.dart';
import 'package:clean_architecture_tdd_example/features/login/data/repositories/login_impl_repo.dart';
import 'package:clean_architecture_tdd_example/features/login/domain/repositories/login_repositories.dart';
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
      
       
      ],
      child: MultiBlocProvider(providers: [
      //
      ], child: child),
    );
  }

 
 

 
}
