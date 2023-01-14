import "package:flutter/material.dart";

class CheckAndNextBtns extends StatelessWidget {
  final bool correct;
  final sentence;
  final nextquestionHandler;
  final checAnswerHandler;
  const CheckAndNextBtns(this.correct, this.sentence, this.nextquestionHandler,
      this.checAnswerHandler);

  @override
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          correct
              ? ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.cyan),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(20, 10, 20, 10))),
                  onPressed: nextquestionHandler,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _isWindows ? 40 : 25,
                    ),
                  ))
              : ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.cyan),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(20, 10, 20, 10))),
                  onPressed: () {
                    checAnswerHandler(sentence);
                  },
                  child: Text(
                    "Check",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: _isWindows ? 40 : 25,
                    ),
                  )),
        ],
      ),
    );
  }
}
