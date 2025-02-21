import 'package:counter_bloc/events/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/blocs/counter_bloc.dart';

class CounterButtens extends StatelessWidget {
  const CounterButtens({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => context.read<CounterBloc>().add(Decrement()),
          icon: const Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () => context.read<CounterBloc>().add(Increment()),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
