import 'package:flutter/material.dart';

class TestScore extends StatelessWidget {
  var wrongAnswers;
  var correctAnswers;
  TestScore(this.wrongAnswers, this.correctAnswers);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
              text: TextSpan(text: "", children: [
                TextSpan(
                  text: "Correct: ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                TextSpan(
                  text: "$correctAnswers",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ]),
            ),
            RichText(
              text: TextSpan(text: "", children: [
                TextSpan(
                  text: "Wrong: ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                TextSpan(
                  text: "$wrongAnswers",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ]),
            ),
          ],
        ));
  }
}
