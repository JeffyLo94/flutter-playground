import 'package:flutter/material.dart';

import './quizWidget.dart';
import './resultsWidget.dart';

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionInd = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        { 'text': 'Black', 'score': 10},
        { 'text': 'Red', 'score': 8},
        { 'text': 'Orange', 'score': 7},
        { 'text': 'Yellow', 'score': 6},
        { 'text': 'Green', 'score': 5},
        { 'text': 'Cyan', 'score': 4},
        { 'text': 'Blue', 'score': 3},
        { 'text': 'Purple', 'score': 2},
        { 'text': 'White', 'score': 9},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        { 'text': 'Lion', 'score': 10},
        { 'text': 'Elephant', 'score': 9},
        { 'text': 'Aligator', 'score': 8},
        { 'text': 'Zebra', 'score': 7},
        { 'text': 'Snake', 'score': 6},
        { 'text': 'Dog', 'score': 5},
        { 'text': 'Cat', 'score': 4},
        { 'text': 'Rabbit', 'score': 3},
        { 'text': 'Rat', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': [
        { 'text': 'Pascal', 'score': 10},
        { 'text': 'C', 'score': 9},
        { 'text': 'Go', 'score': 8},
        { 'text': 'Ruby', 'score': 7},
        { 'text': '.Net', 'score': 6},
        { 'text': 'Java', 'score': 5},
        { 'text': 'Dart', 'score': 4},
        { 'text': 'Python', 'score': 3},
        { 'text': 'Javascript', 'score': 2},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      if (_questionInd < _questions.length) {
        _questionInd++;
        _totalScore += score;
      }
    });
    print(_questionInd);
    print('total score: ${_totalScore}');
  }

  void _restartQuiz() {
    setState(() {
      _questionInd = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: (_questionInd < _questions.length
          ? QuizWidget(_questions, _questionInd, answerQuestion: _answerQuestion)
          : ResultWidget(_totalScore, _restartQuiz)),
    );
  }
}
