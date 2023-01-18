import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    double result_percentage = (resultScore / 30) * 100;
    print(result_percentage);
    if (result_percentage > 80) {
      resultText =
          "You are awesome and I like you, Our choices matches we could be friend!";
    } else if (result_percentage > 70) {
      resultText = "We could be friend we have some same choices. ";
    } else if (result_percentage > 50) {
      resultText = "I don't think we could be friend our choices doesn't match";
    } else {
      resultText = "You are strange and bad we could be enemy or frenemy only.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: resetHandler,
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ))
      ],
    ));
  }
}
