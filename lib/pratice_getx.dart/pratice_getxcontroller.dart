import 'package:get/get.dart';
import 'package:quizzz_app/question/questions.dart';

class PracticeQuiz extends GetxController {
  var question =
      getQuestions(); // The question list can be non-reactive if the list itself doesn't change
  var score = 0.obs;
  var questionIndex = 0.obs; // Corrected spelling

  void practiceAnswer(bool practiceUserAnswer) {
    // Corrected spelling
    if (question[questionIndex.value].isCorrect == practiceUserAnswer) {
      score.value++;
    }
    if (questionIndex.value < question.length - 1) {
      questionIndex.value++;
    } else {
      questionIndex.value++;
    }
  }
}
