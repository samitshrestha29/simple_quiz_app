// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHome(),
//     );
//   }
// }

// class MyHome extends ConsumerWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final count = ref.watch(counterProvider);
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Consumer(
//                 builder: (context, ref, child) {
//                   return Text(count.toString());
//                 },
//               )
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: () {
//           ref.read(counterProvider.notifier).state++;
//         }),
//       ),
//     );
//   }
// }

// class Counter {
//   int count;
//   Counter(this.count);
// }

// class CounterNotifier extends StateNotifier<Counter> {
//   CounterNotifier() : super(Counter(0));
//   increment() {
//     state = Counter(state.count + 1);
//   }
// }

// final counterProvider = StateProvider<int>((ref) {
//   return 0;
// });

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final countercontroller = ref.watch(counterProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Home Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('${counterProvider.notifier}'),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(counterProvider.notifier).state++;
//         },
//         child: const Text('data'),
//       ),
//     );
//   }
// }

// class Counter {
//   int count;

//   Counter(this.count);
// }

// class CounterNotifier extends StateNotifier<int> {
//   CounterNotifier() : super(0);
// }

// final counterProvider = StateProvider<int>((ref) {
//   return 0;
// });
// class CounterNotifier extends StateNotifier<Counter> {
//   CounterNotifier() : super(Counter(0));
//   increment() {
//     state = Counter(state.count + 1);
//   }
// }

// final counterProvider = StateNotifierProvider<CounterNotifier, Counter>((ref) {
//   return CounterNotifier();
// });

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Home Page'),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(''),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterProvider);
    final countercontroller = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${value.count}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: countercontroller.increment(),
        //  () {
        //   // ref.read(counterProvider.notifier).state++;
        //   value.increment;
        // },
        child: const Text('data'),
      ),
    );
  }
}

// final counterProvider = StateProvider<int>((ref) {
//   return 0;
// });

class Counter {
  int count;
  Counter(this.count);
}

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(Counter(0));
  increment() {
    state = Counter(state.count + 1);
  }
}

final counterProvider = StateNotifierProvider<CounterNotifier, Counter>((ref) {
  return CounterNotifier();
});
