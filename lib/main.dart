import 'package:flutter/material.dart';

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

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = ['好きな食べ物はなんですか？', '好きな動物は何ですか？'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
              ),
            RaisedButton(
              child: Text('答え 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('答え 2'),
              onPressed: () => print('答え2が選ばれました'),
            ),
            RaisedButton(
              child: Text('答え 3'),
              onPressed: () => print('答え3が選ばれました'),
            ),
          ],
        ),
      ),
    );
  }
}
