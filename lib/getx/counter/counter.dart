import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Counter extends StatelessWidget {
  Counter({super.key});
  final Classcounter countercontroller = Get.put(Classcounter());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('${countercontroller.currentIndex.value}'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: countercontroller.counter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Classcounter extends GetxController {
  var currentIndex = 0.obs;
  counter() {
    currentIndex.value++;
  }
}
