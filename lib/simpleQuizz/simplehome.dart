import 'package:flutter/material.dart';
import 'package:quizzz_app/question/questions.dart';

class SimpleQuiz extends StatefulWidget {
  const SimpleQuiz({super.key});

  @override
  State<SimpleQuiz> createState() => _SimpleQuizState();
}

class _SimpleQuizState extends State<SimpleQuiz> {
  var questions = getQuestions();

  int currentindex = 0;
  int score = 0;
  setAnswer(bool userAnswer) {
    setState(() {
      if (questions[currentindex].isCorrect == userAnswer) {
        score++;
      }
    });
    setState(() {
      currentindex++;
    });
  }

  nextQuestion() {
    setState(() {
      if (currentindex < questions.length - 1) {
        currentindex++;
      }
    });
  }

  void playagain() {
    setState(() {
      score = 0;
      currentindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: currentindex < questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(questions[currentindex].questionText),
                  ElevatedButton(
                    onPressed: () {
                      setAnswer(true);
                    },
                    child: const Text("True"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setAnswer(false);
                    },
                    child: const Text("false"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: nextQuestion,
                    child: const Text("Next"),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your score is: $score/${questions.length}',
                    style: const TextStyle(fontSize: 24.0),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: playagain,
                    child: const Text("Play Again"),
                  ),
                ],
              ),
      ),
    );
  }
}
