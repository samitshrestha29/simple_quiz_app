class Question {
  String questionText;
  bool isCorrect;

  Question(this.questionText, this.isCorrect);
}

List<Question> getQuestions() {
  return [
    Question("The sky is blue.", true),
    Question("Cats are mammals.", true),
    Question("Fish can fly.", false),
    Question("The Earth is flat.", false),
    Question("Python is a type of snake.", true),
    Question("Birds can swim.", true),
    Question("Dogs can talk.", false),
    Question("The sun rises in the west.", false),
    Question("Humans can breathe underwater without equipment.", false),
    Question("Fire is cold.", false),
  ];
}
