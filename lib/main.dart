import 'package:counterapp/logic/counter_bloc.dart';
import 'package:counterapp/screen/counterscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => CounterBloc(),
          child: CounterScreen(),
        ));
  }
}
