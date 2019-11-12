import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get scoreText {
    return 'Score ' + resultScore.toString();
  }

  String get resultPharse {
    String resultText;
    if (resultScore < 3) {
      resultText = ' You are in level 1';
    } else if (resultScore < 6) {
      resultText = ' You are in level 2';
    } else if (resultScore < 6) {
      resultText = ' You are in level 3';
    } else if (resultScore < 9) {
      resultText = ' You are in level 4';
    } else {
      resultText = ' You are stranger.';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    //     Container(
    //       width: double.infinity,
    //       margin: EdgeInsets.all(10),
    //       child: Text(
    //         scoreText,
    //         style: TextStyle(fontSize: 40,color:Colors.green),
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     Container(
    //       width: double.infinity,
    //       margin: EdgeInsets.all(10),
    //       child: Text(
    //         resultPharse,
    //         style: TextStyle(fontSize: 28,color:Colors.red),
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //   ],
    // );

    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPharse,
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Reset Quiz.!'),
          textColor: Colors.red,
          onPressed: resetHandler,
        ),
        IconButton(
            icon: Icon(Icons.wifi),
            tooltip: 'Increase volume by 10',
            onPressed: null,
          ),
      ],
    ));
  }
}
