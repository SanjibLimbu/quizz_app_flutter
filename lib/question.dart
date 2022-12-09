class Question {
  late String questionText;
  late String answer;
  late Map options;
  Question({required String q, required String a, required o}) {
    questionText = q;
    answer = a;
    options = o;
  }
}
