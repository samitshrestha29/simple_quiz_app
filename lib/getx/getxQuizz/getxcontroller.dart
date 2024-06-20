import 'package:get/get.dart';
import 'package:quizzz_app/question/questions.dart';

class Getx_controller extends GetxController {
  var questions = getQuestions();
  var currentindex = 0.obs;
  var score = 0.obs;

  void setAnswer(bool userAnswer) {
    if (questions[currentindex.value].isCorrect == userAnswer) {
      score.value++;
    }
    currentindex.value++;
  }

  void playAgain() {
    score.value = 0;
    currentindex.value = 0;
  }
}
