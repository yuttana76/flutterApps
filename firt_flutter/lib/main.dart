import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'White', 'Green', 'Red'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Dog', 'Cat', 'Rat', 'Bird'],
    },
    {
      'questionText': 'What\'s your favorite fruite ?',
      'answers': ['Mango', 'Apple', 'Orange', 'Banana']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more  questions.');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App.'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
