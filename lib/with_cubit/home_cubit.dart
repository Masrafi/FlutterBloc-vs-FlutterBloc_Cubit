import 'package:counterbloc/with_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends StatefulWidget {
  const HomeCubit({Key? key}) : super(key: key);

  @override
  State<HomeCubit> createState() => _HomeCubitState();
}

class _HomeCubitState extends State<HomeCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bloc Cubit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, countValue) {
              return Text(
                countValue.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //BlocProvider.of<CounterCubit>(context).increment();
                  context.read<CounterCubit>().increment();
                },
                child: const Text("Increment"),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //BlocProvider.of<CounterCubit>(context).decrement();
                  context.read<CounterCubit>().decrement();
                },
                child: const Text("Decrement"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
