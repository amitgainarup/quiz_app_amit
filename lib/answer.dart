import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

class Answers extends StatelessWidget {
final VoidCallback selectHandler;
final String answerText;
Answers(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
      child: 
      Text(answerText,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Griffy'),
      ),
      onPressed: selectHandler,
      color: Colors.teal,
      textColor: Colors.white,
      ),
    );
  }
}