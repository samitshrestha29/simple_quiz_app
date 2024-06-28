// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:quizzz_app/question/questions.dart';

// class QuizState {
//   final List<Question> questions;
//   final int currentIndex;
//   final int score;

//   QuizState({
//     required this.questions,
//     required this.currentIndex,
//     required this.score,
//   });

//   QuizState copyWith({
//     List<Question>? questions,
//     int? currentIndex,
//     int? score,
//   }) {
//     return QuizState(
//       questions: questions ?? this.questions,
//       currentIndex: currentIndex ?? this.currentIndex,
//       score: score ?? this.score,
//     );
//   }
// }

// class QuizNotifier extends StateNotifier<QuizState> {
//   QuizNotifier()
//       : super(QuizState(questions: getQuestions(), currentIndex: 0, score: 0));

//   void setAnswer(bool userAnswer) {
//     if (state.questions[state.currentIndex].isCorrect == userAnswer) {
//       state = state.copyWith(score: state.score + 1);
//     }
//     nextQuestion();
//   }

//   void nextQuestion() {
//     if (state.currentIndex < state.questions.length - 1) {
//       state = state.copyWith(currentIndex: state.currentIndex + 1);
//     } else {
//       state = state.copyWith(currentIndex: state.questions.length);
//     }
//   }

//   void playAgain() {
//     state = state.copyWith(score: 0, currentIndex: 0);
//   }
// }

// final quizProvider = StateNotifierProvider<QuizNotifier, QuizState>((ref) {
//   return QuizNotifier();
// });
