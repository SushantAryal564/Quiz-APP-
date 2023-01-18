import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.pink.shade200),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 20,
              ))),
        ));
  }
}
