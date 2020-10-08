import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

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
      'questionText': '好きな食べ物はなんですか？',
      'answers': [
        {'text': '黒', 'score': 10},
        {'text': '赤', 'score': 7},
        {'text': '青', 'score': 5},
        {'text': '黄色', 'score': 3},
      ],
    },
    {
      'questionText': '好きな動物は何ですか？',
      'answers': [
        {'text': '犬', 'score': 3},
        {'text': '猫', 'score': 5},
        {'text': '熊', 'score': 7},
        {'text': '獅子', 'score': 10},
      ],
    },
    {
      'questionText': '好きな食べ物はなんですか？',
      'answers': [
        {'text': 'ラーメン', 'score': 10},
        {'text': '唐揚げ', 'score': 7},
        {'text': 'パスタ', 'score': 3},
        {'text': 'グラタン', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("Wa have more questions");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
