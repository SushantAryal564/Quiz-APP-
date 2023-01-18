import 'package:flutter/material.dart';
import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 10},
        {'text': 'White', 'score': 9}
      ],
    },
    {
      'questionText': "what's your favourite animal?",
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Lion', 'score': 8},
        {'text': 'Rahino', 'score': 6},
        {'text': 'Elephant', 'score': 9},
        {'text': 'Snow Leopard', 'score': 10}
      ],
    },
    {
      'questionText': "what's your favourite Singer?",
      'answers': [
        {'text': 'Taylor Swift', 'score': 3},
        {'text': 'Ed-Sheeren', 'score': 2},
        {'text': 'Nirvana', 'score': 10},
        {'text': 'Metallica', 'score': 9},
        {'text': 'Twenty One Pilots', 'score': 10},
        {'text': 'Black', 'score': 1},
        {'text': 'Pink Floyd', 'score': 9},
        {'text': 'One Direction', 'score': 7},
        {'text': 'Hindi Artist', 'score': 0},
        {'text': 'Nepali Pop Artist', 'score': 7},
      ],
    },
    {
      'questionText': "what's your favourite Food?",
      'answers': [
        {'text': 'MOMO', 'score': 10},
        {'text': 'Burger', 'score': 8},
        {'text': 'Chowmin', 'score': 7},
        {'text': 'Pizza', 'score': 6},
        {'text': 'Dal Bhat Tarkari', 'score': 7},
        {'text': 'Thukpa', 'score': 8},
        {'text': 'Chicken Roast', 'score': 9},
        {'text': 'Sekuwa', 'score': 10},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalscore = 0;
  void _answerQuestion(int score) {
    _totalscore = _totalscore + score;
    print("Your total score is:");
    print(_totalscore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My First App")),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalscore, _resetQuiz)));
  }
}
