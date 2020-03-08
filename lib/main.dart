import 'package:flutter/material.dart';
import 'package:practice1/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatefulWidget {

	@override
	State<StatefulWidget> createState() {
		return _MyAppState();
	}

}

class _MyAppState extends State<MyApp> {

	static const _questions = [
		{
			'questionText': 'What is your favorite color?',
			'answers': [
				{'text' : 'Blue', 'score' : 10 },
				{'text' : 'Black', 'score' : 9 },
				{'text' : 'Red', 'score' : 6 },
				{'text' : 'Pink', 'score' : 3 },
			],
		},

		{
			'questionText': 'What is your favorite animal?',
			'answers': [
				{'text' : 'Tiger', 'score' : 10 },
				{'text' : 'Lion', 'score' : 5 },
				{'text' : 'Pigeon', 'score' : 8 },
				{'text' : 'Rabbit', 'score': 7 },
			],
		},

		{
			'questionText': 'What is your favorite picture?',
			'answers': [
				{'text' : 'The Departed', 'score' : 7 },
				{'text' : 'Fury', 'score': 10 },
				{'text' : 'Shutter Island', 'score' : 12 },
				{'text' : 'Rabbit', 'score': 7 },
			],
		}
	];

	var _questionIndex = 0;
	var _totalScore = 0;

	void _resetQuiz() {

		// calls build method
		setState(() {
			_questionIndex = 0;
			_totalScore = 0;
     	});
	}

	void _answerChosen(int score) {

		_totalScore += score;

		// calls build method
		setState(() {
			_questionIndex++;
		});
	}

	@override
	Widget build(BuildContext context) {

		// widget tree
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('My First Flutter App'),
				),
				body: _questionIndex < _questions.length
				? Quiz(answerChosen: _answerChosen, questions: _questions, questionIndex: _questionIndex,)
				: Result(_totalScore, _resetQuiz),
			  ),
			);
  	 }
}
