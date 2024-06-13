import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'questions.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = getQuestions();

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
