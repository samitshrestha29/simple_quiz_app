import 'package:get/get.dart';
import 'package:quizzz_app/question/questions.dart';

class Quiz extends GetxController {
  var questions = getQuestions();
  var currentindex = 0.obs;
  var score = 0.obs;
  nextQuestion() {
    if (currentindex.value < questions.length - 1) {
      currentindex.value++;
    }
  }

  setAnswer(bool userAnswer) {
    if (questions[currentindex.value].isCorrect == userAnswer) {
      score.value++;
    }
    currentindex.value++;
  }
}
