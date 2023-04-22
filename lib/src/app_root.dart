import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s/bloc/counter_cubit/counter_cubit.dart';

import '../screens/counter_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),

      ],
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
