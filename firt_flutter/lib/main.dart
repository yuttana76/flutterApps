import 'package:flutter/material.dart';

import './question.dart';
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

class _MyAppState extends State<MyApp>{
 var _questionIndex = 0;
  void answerQuestion(){
    setState(() {
    _questionIndex ++;
    });
    
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {

    var _questions=[
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
      ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App.'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: ()=>print('Choose answer 2')
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: (){ 
                print('Choose answer 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
