import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzz_app/question/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Quiz quizcontroller = Get.put(Quiz());
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Obx(
        () => quizcontroller.questionPosition <
                quizcontroller.questions.length - 1
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(quizcontroller
                          .questions[quizcontroller.questionPosition.value]
                          .questionText),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        quizcontroller.setAnswer(true);
                      },
                      child: const Text('True'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        quizcontroller.setAnswer(false);
                      },
                      child: const Text('False'),
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        '${quizcontroller.score}/${quizcontroller.questions.length}'),
                  ],
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          quizcontroller.nextQuestion();
        },
        child: const Text('Next'),
      ),
    );
  }
}

class Quiz extends GetxController {
  var questionPosition = 0.obs;
  var questions = getQuestions();
  var score = 0.obs;
  nextQuestion() {
    if (questionPosition.value < questions.length - 1) {
      questionPosition.value++;
    }
  }

  setAnswer(bool userAnswer) {
    if (questions[questionPosition.value].isCorrect == userAnswer) {
      score++;
    }
    nextQuestion();
  }
}
