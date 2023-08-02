import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formation_flutter/bloc/counter_bloc.dart';
import 'package:formation_flutter/bloc/network_request.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (_) => CounterBloc(),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              FutureBuilder(
                future: NetworkRequest().getProduct(),
                builder: (BuildContext context,
                    AsyncSnapshot<PokemonResponse> data) {
                  if (data.hasData) {
                    return Text(data.data.toString());
                  }

                  return const CircularProgressIndicator.adaptive();
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (BuildContext context, CounterState state) {
                  return Text(state.counter.toString());
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              // Envoyer un événement
              BlocProvider.of<CounterBloc>(context)
                  .add(DecrementCounterEvent());
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
