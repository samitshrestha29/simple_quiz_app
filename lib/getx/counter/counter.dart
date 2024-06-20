//GetMaterialApp instaead of MAterialApp in main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterScreen extends StatelessWidget {
  final Counter counterController = Get.put(Counter());
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${counterController.counter}')),
            ElevatedButton(
              onPressed: counterController.restart,
              child: const Text('restart'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter extends GetxController {
  var counter = 0.obs;
  increment() {
    counter++;
  }

  restart() {
    counter.value = 0;
  }
}
