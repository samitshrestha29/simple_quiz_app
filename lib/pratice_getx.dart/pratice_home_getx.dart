import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quizzz_app/pratice_getx.dart/pratice_getxcontroller.dart';

class PraticeGetxHome extends StatelessWidget {
  final Quiz controller = Get.put(Quiz());
  PraticeGetxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Center(
              child: controller.currentindex < controller.questions.length
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => Text(controller
                              .questions[controller.currentindex.value]
                              .questionText),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.setAnswer(true);
                          },
                          child: const Text("True"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.setAnswer(false);
                          },
                          child: const Text("False"),
                        ),
                        ElevatedButton(
                          onPressed: controller.nextQuestion,
                          child: const Text("Next"),
                        ),
                      ],
                    )
                  : Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'The score of the Quiz is :${controller.score} / ${controller.questions.length}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ))),
        ),
      ),
    );
  }
}
