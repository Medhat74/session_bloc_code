import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s/bloc/counter_cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is AddCounterSuccessState)
          print("Add ");
      },
      builder: (context, state) {
        var counterCubit = CounterCubit.get(context);
        return Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      counterCubit.subCounter();
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                Text(
                  counterCubit.counter.toString(),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      counterCubit.addCounter();
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
