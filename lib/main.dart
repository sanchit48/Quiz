import 'package:flutter/material.dart';
import './question.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatefulWidget
{
	@override
	State<StatefulWidget> createState()
	{
		// TODO: implement createState
		return _MyAppState();
	}
}

class _MyAppState extends State<MyApp>
{
	var _questionIndex = 0;

	void _answerChosen()
	{
		// calls build method
		setState()
		{
			_questionIndex++;

		}
		print(_questionIndex);
	}

	@override
	Widget build(BuildContext context)
	{
		var questions =
		[
			'What is your favorite color?',
			'What is your fav celebrity'
		];

		// widget tree
		return MaterialApp
		(
			home: Scaffold
			(
				appBar: AppBar
				(
					title: Text('My First Flutter App'),
				),
				body: Column
				(
						children:
						[
							Question(
								questions[_questionIndex],
							),
							RaisedButton(child: Text('Answer 1'), onPressed: _answerChosen),
							RaisedButton(child: Text('Answer 2'), onPressed: _answerChosen),
							RaisedButton(child: Text('Answer 3'), onPressed: () => print("H")),
						],
				)
			),
		);
  	 }
}
