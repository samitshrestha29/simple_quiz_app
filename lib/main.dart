// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: CounterScreen(),
//     );
//   }
// }

// class CounterController extends GetxController {
//   var counter = 0.obs;

//   void increment() {
//     counter++;
//   }
// }

// class CounterScreen extends StatelessWidget {
//   final CounterController counterController = Get.put(CounterController());

//   CounterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter App'),
//       ),
//       body: Center(
//         child: Obx(() => Text(
//               'Counter: ${counterController.counter}',
//               style: const TextStyle(fontSize: 24),
//             )),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: counterController.increment,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quizzz_app/pratice_getx.dart/pratice_home_getx.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PraticeGetxHome(),
    );
  }
}
