import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${counterState.counter},${counterState.name}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counterController.increment,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class CounterState {
  final int counter;
  final String name;

  CounterState(this.counter, this.name);
}

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState(0, 'samit'));

  void increment() {
    state = CounterState(state.counter + 1, 'samit');
  }
}

final counterProvider =
    StateNotifierProvider<CounterNotifier, CounterState>((ref) {
  return CounterNotifier();
});
