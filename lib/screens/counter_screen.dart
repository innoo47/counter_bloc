import 'package:counter_bloc/blocs/counter_bloc.dart';
import 'package:counter_bloc/states/counter_state.dart';
import 'package:counter_bloc/widgets/counter_buttens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter : ${state.count}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                );
              },
            ),
            const CounterButtens(),
          ],
        ),
      ),
    );
  }
}
