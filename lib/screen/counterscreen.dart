import 'package:counterapp/logic/counter_bloc.dart';
import 'package:counterapp/logic/counter_event.dart';
import 'package:counterapp/logic/counter_state.dart';
import 'package:counterapp/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter App')),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counter.toString(),
                  style: Styles.counterStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    decrementButton(context),
                    Gap(20),
                    incrementButton(context),
                  ],
                ),
                Gap(30),
                resetButton(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget decrementButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        BlocProvider.of<CounterBloc>(context).add(Decrement());
      },
      color: Colors.red,
      child: Icon(Icons.remove),
    );
  }

  Widget incrementButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        BlocProvider.of<CounterBloc>(context).add(Increment());
      },
      color: Colors.green,
      child: Icon(Icons.add),
    );
  }

  Widget resetButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        BlocProvider.of<CounterBloc>(context).add(Reset());
      },
      color: Colors.grey.shade300,
      child: Icon(Icons.restart_alt),
    );
  }
}
