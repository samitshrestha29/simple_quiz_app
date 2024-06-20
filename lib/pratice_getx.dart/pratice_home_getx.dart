import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzz_app/pratice_getx.dart/pratice_getxcontroller.dart';

class PraticeGetxHome extends StatelessWidget {
  final PracticeQuiz controller = Get.put(PracticeQuiz());
  PraticeGetxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.questionIndex.value < controller.question.length
          ? Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(controller
                          .question[controller.questionIndex.value]
                          .questionText),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.practiceAnswer(true);
                      },
                      child: const Text('True'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.practiceAnswer(false);
                      },
                      child: const Text('False'),
                    ),
                  ],
                ),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      '${controller.score.value}/${controller.question.length}')
                ],
              ),
            ),
    );
  }
}
