import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzz_app/getx/getxQuizz/getxcontroller.dart';

class GetxQuiz extends StatelessWidget {
  final Getx_controller controller = Get.put(Getx_controller());
  GetxQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return controller.currentindex.value < controller.questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller
                        .questions[controller.currentindex.value].questionText),
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
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your score is: ${controller.score.value}/${controller.questions.length}',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: controller.playAgain,
                      child: const Text("Play Again"),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
