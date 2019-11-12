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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'White', 'scoe': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Red', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Rat', 'score': 3},
        {'text': 'Bird', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite fruite ?',
      'answers': [
        {'text': 'Mango', 'score': 1},
        {'text': 'Apple', 'score': 2},
        {'text': 'Orange', 'score': 3},
        {'text':'Banana','score':4}
      ]
    }
  ];

void _resetQuiz(){
  setState(() {
    _totalScore=0;
    _questionIndex=0;
    });
}

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
