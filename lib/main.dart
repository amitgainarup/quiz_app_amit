import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var question = [
    {
      'questionText': 'what is your favorite color?',
      'answer': ['Red', 'Black', 'Yellow', 'Blue']
    },
    {
      'questionText': 'what is your favorite animal?',
      'answer': ['Cow', 'Dog', 'Cat', 'Tiger']
    },
    {
      'questionText': 'what is your favorite sports?',
      'answer': ['Cricket', 'Football', 'Badminton', 'Cram']
    },
    {
      'questionText': 'what is your favorite Laptop?',
      'answer': ['Asus', 'Hp', 'Dell', 'Lenevo']
    },
  ];
  var _answerIndex = 0;
  void _answerQuestion() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });
    print(_answerIndex);
    if (_answerIndex < question.length) {
      print('You have more questions.');
    } else {
      print('You have done!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(child: Text('Quiz App')),
        ),
        body: Center(
          child: _answerIndex < question.length
              ? Column(
                  children: [
                    Questions(question[_answerIndex]['questionText'] as String),
                    ...(question[_answerIndex]['answer'] as List<String>)
                        .map((answer) {
                      return Answers(_answerQuestion, answer);
                    }),
                  ],
                )
              : Center(
                  child: Text('This quiz is completed'),
                ),
        ),
      ),
    );
  }
}
