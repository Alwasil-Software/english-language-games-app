import 'package:flutter/material.dart';

class ShowScoreAlert extends StatelessWidget {
  int wrongAnswers;
  int correctAnswers;
  String testName;

  ShowScoreAlert(this.correctAnswers, this.wrongAnswers, this.testName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Congrats!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                testName,
                style: TextStyle(fontSize: 25, color: Colors.cyan),
              ),
            ),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "$correctAnswers Correct Answers",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "$wrongAnswers wrong Answers",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text(
              'Exit',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
