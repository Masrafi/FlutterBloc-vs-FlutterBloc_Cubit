import 'package:counterbloc/with_bloc/bloc/counter_bloc.dart';
import 'package:counterbloc/with_bloc/home_bloc.dart';
import 'package:counterbloc/with_cubit/cubit/counter_cubit.dart';
import 'package:counterbloc/with_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyAppCubit());
}

//For Flutter Bloc Cubit
class MyAppCubit extends StatelessWidget {
  const MyAppCubit({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const MaterialApp(
        home: HomeCubit(),
      ),
    );
  }
}

//For flutter bloc
class MyAppBloc extends StatelessWidget {
  const MyAppBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const MaterialApp(
        home: HomeBloc(),
      ),
    );
  }
}
