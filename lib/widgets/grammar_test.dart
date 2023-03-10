import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:smile3/widgets/check_and_next_btns.dart';
import 'package:smile3/widgets/show_Score_alert.dart';
import '../utils/data.dart';
import '../widgets/done_and_left.dart';
import '../widgets/test_score.dart';

class GrammarTest extends StatefulWidget {
  const GrammarTest({super.key});

  @override
  State<GrammarTest> createState() => _GrammarTestState();
}

class _GrammarTestState extends State<GrammarTest> {
  AudioPlayer player = AudioPlayer();
  var wrong = false;
  var correct = false;
  var wrongAnswers = 0;
  var correctAnswers = 0;
  var questionsIndex = 0;
  int doneQuestions = 0;
  int leftQuestions = grammar_sentenecs.length;
  final _missingWordController = TextEditingController();
  var done = 0;
  var missingWord;

  var gameOver = false;
  var inputColor = Colors.blue.shade300;
  var inputText = 'missing......';
  tracker() {
    setState(() {});
  }

  checAnswerHandler(sentence) {
    if (questionsIndex == grammar_sentenecs.length - 1) {
      gameOver = true;
      questionsIndex = 0;
      player.play(AssetSource('finishedTest.mp3'));
      questionsIndex = 0;
    }
    if (_missingWordController.text.trim().toLowerCase() ==
        sentence.missingWord) {
      setState(() {
        correct = true;
        correctAnswers = correctAnswers + 1;
      });
      !gameOver ? player.play(AssetSource("success.mp3")) : "";
    } else {
      setState(() {
        wrongAnswers = wrongAnswers + 1;
      });
      player.play(AssetSource("wrong.mp3"));
    }
    setState(() {
      !correct ? inputColor = Colors.red : inputColor;
      !correct ? inputText = "Wrong" : inputText;
      !correct ? _missingWordController.text = "" : _missingWordController.text;
    });
  }

  nextquestionHandler() {
    setState(() {
      inputText = 'missing......';
      inputColor = Colors.blue.shade300;
      if (questionsIndex <= grammar_sentenecs.length) {
        questionsIndex = questionsIndex + 1;
        doneQuestions = doneQuestions + 1;
        leftQuestions = leftQuestions - 1;
        _missingWordController.text = '';
        correct = false;
      }
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    tracker();
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: gameOver
            ? Container(
                height: MediaQuery.of(context).size.height - 100,
                child: Center(
                  child: Container(
                    height: 400,
                    child: ShowScoreAlert(
                        correctAnswers, wrongAnswers, "Grammar Test"),
                  ),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "type the correct verb in the black space",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 54, 61)),
                                  ),
                                  Text(
                                    " ???????? ?????????? ?????????????? ???? ???????????? ????????????",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 54, 61)),
                                  ),
                                ],
                              ),
                            ),
                            TestScore(wrongAnswers, correctAnswers),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: grammar_sentenecs[questionsIndex]
                                .map((sentence) {
                              setState(() {
                                missingWord = sentence.missingWord;
                              });
                              return Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 10),
                                        child: Text(
                                          "Suggestions",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.cyan,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: sentence.suggestions
                                            .map<Widget>((suggestion) {
                                          return Container(
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                suggestion,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      Container(
                                        color: Colors.green.shade100,
                                        padding:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        margin:
                                            EdgeInsets.fromLTRB(5, 30, 5, 20),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        // height: 150,
                                        child: Wrap(children: [
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            child: Text(
                                              sentence.firstPart,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black87),
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            height: 30,
                                            child: correct
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.green,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      sentence.missingWord,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                : TextField(
                                                    onChanged: (text) {},
                                                    controller:
                                                        _missingWordController,
                                                    decoration: InputDecoration(
                                                      focusColor: Colors.red,
                                                      contentPadding:
                                                          const EdgeInsets
                                                                  .fromLTRB(
                                                              3, 0, 3, 0),
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText: inputText,
                                                      hintStyle: TextStyle(
                                                          fontSize: 20,
                                                          color: inputColor),
                                                    ),
                                                  ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.all(5),
                                              child: Text(
                                                sentence.secondPart,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black87),
                                              ))
                                        ]),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.all(20),
                                          child: CheckAndNextBtns(
                                              correct,
                                              sentence,
                                              nextquestionHandler,
                                              checAnswerHandler))
                                    ],
                                  )
                                ],
                              );
                            }).toList()),
                      ),
                    ],
                  ),
                  // ShowScoreAlert(
                  //     correctAnswers, wrongAnswers, "Grammar Test")
                  DoneAndLeft(leftQuestions, doneQuestions),
                ],
              ),
      ),
    );
  }
}
