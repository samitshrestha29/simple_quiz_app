import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzz_app/riverpod/riverpod_Quiz/quiz.state.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizProvider);
    final quizController = ref.read(quizProvider.notifier);

    return Scaffold(
      body: Center(
        child: quizState.currentIndex < quizState.questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      quizState.questions[quizState.currentIndex].questionText),
                  ElevatedButton(
                    onPressed: () {
                      quizController.setAnswer(true);
                    },
                    child: const Text("True"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      quizController.setAnswer(false);
                    },
                    child: const Text("False"),
                  ),
                  ElevatedButton(
                    onPressed: quizController.nextQuestion,
                    child: const Text('Next'),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your score is: ${quizState.score}/${quizState.questions.length}',
                    style: const TextStyle(fontSize: 24.0),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: quizController.playAgain,
                    child: const Text("Play Again"),
                  ),
                ],
              ),
      ),
    );
  }
}
