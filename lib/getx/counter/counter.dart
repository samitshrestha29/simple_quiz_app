import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Counter extends StatelessWidget {
  final Counterclass counter_controller = Get.put(Counterclass());
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${counter_controller.counter.value}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter_controller.counterMethod,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Counterclass extends GetxController {
  var counter = 0.obs;

  counterMethod() {
    counter.value++;
  }
}
