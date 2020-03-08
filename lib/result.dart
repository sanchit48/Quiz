import 'package:flutter/material.dart';

class Result extends StatelessWidget {

	final int totalScore;

	final Function resetQuiz;

	Result(this.totalScore, this.resetQuiz);

	String get resultPhrase {

		String resultText;
		if(totalScore >= 20)
			resultText = 'You are awesome and innocent!!';
		else if(totalScore > 13)
			resultText = 'Pretty Likeable!';
		else
			resultText = 'You need to work on yourself :(';
		return resultText;
	}

	@override
	Widget build(BuildContext context) {
		return Center(
			child:Column(
			    children: [
					Text(
						resultPhrase,
						style:TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
						textAlign: TextAlign.center,
					),
					FlatButton(
						child:Text('Restart Quiz'),
						onPressed: resetQuiz,
						textColor: Colors.red
					)

				],
			),
		);
	}
}