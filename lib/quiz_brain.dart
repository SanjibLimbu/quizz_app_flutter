import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
        q: "The Homolographic projection has the correct representation of",
        a: "area",
        o: {
          "option_one": "shape",
          "option_two": "area",
          "option_three": "distance",
        }),
    Question(
        q: "The latitudinal differences in pressure delineate a number of major pressure zones, which correspond with",
        a: "zones of climate",
        o: {
          "option_one": "zones of oceans",
          "option_two": "zones of land",
          "option_three": "zones of climate",
        }),
    Question(
      q: "The intersecting lines drawn on maps and globes are",
      a: "geographic grids",
      o: {
        "option_one": "latitudes",
        "option_two": "longitudes",
        "option_three": "geographic grids",
      },
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  Map getOptions() {
    return _questionBank[_questionNumber].options;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
