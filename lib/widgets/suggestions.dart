import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  final sentence;
  Suggestions(this.sentence);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Suggestions",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: sentence.suggestions.map<Widget>((suggestion) {
              return Container(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    suggestion,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
