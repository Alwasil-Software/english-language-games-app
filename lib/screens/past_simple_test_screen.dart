import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:smile3/main.dart';
import 'package:smile3/utils/data.dart';

import '../widgets/done_and_left.dart';
import '../widgets/show_Score_alert.dart';
import '../widgets/test_score.dart';

class PastSimpleTestScreen extends StatefulWidget {
  final grammar_sentenecs;
  const PastSimpleTestScreen({this.grammar_sentenecs});
  @override
  State<PastSimpleTestScreen> createState() => _PastSimpleTestScreenState();
}

class _PastSimpleTestScreenState extends State<PastSimpleTestScreen> {
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
      inputColor = Colors.blue.shade300;
      inputText = 'missing......';
      if (questionsIndex <= widget.grammar_sentenecs.length) {
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
    print({questionsIndex, grammar_sentenecs.length});

    tracker();
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 140,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Container(
            //     // height: 200,
            //     alignment: Alignment.center,
            //     padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            //     margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             bottomLeft: Radius.circular(30),
            //             bottomRight: Radius.circular(30)),
            //         color: MyApp.main_green),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "Past Simple Tense",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontFamily: "ChivoMono",
            //               fontWeight: FontWeight.bold,
            //               color: Colors.yellow),
            //         ),
            //       ],
            //     )),

            !gameOver
                ? Container(
                    padding: EdgeInsets.all(10),
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
                          " اكتب الفعل المناسب في المكان الشاغر",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 54, 61)),
                        ),
                      ],
                    ),
                  )
                : Text(''),
            gameOver
                ? ShowScoreAlert(
                    correctAnswers, wrongAnswers, "Past Simple Test")
                : TestScore(wrongAnswers, correctAnswers),
            !gameOver
                ? Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            grammar_sentenecs[questionsIndex].map((sentence) {
                          setState(() {
                            missingWord = sentence.missingWord;
                          });
                          return Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
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
                                        child: Text(
                                          suggestion,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: MyApp.main_blue),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  Container(
                                    color: Colors.grey.shade300,
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    margin: EdgeInsets.fromLTRB(5, 30, 5, 20),
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    alignment: Alignment.center,
                                    child: Wrap(children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          sentence.firstPart,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black87),
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 30,
                                        child: correct
                                            ? Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.green,
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  sentence.missingWord,
                                                  style: TextStyle(
                                                      fontSize: 16,
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
                                                      const EdgeInsets.fromLTRB(
                                                          3, 0, 3, 0),
                                                  border: OutlineInputBorder(),
                                                  hintText: inputText,
                                                  hintStyle: TextStyle(
                                                      fontSize: 12,
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
                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        correct
                                            ? ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll<
                                                            Color>(Colors.cyan),
                                                    padding:
                                                        MaterialStatePropertyAll(
                                                            EdgeInsets.fromLTRB(
                                                                20, 10, 20, 10))),
                                                onPressed: nextquestionHandler,
                                                child: Text(
                                                  "Next",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ))
                                            : ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll<
                                                            Color>(Colors.cyan),
                                                    padding:
                                                        MaterialStatePropertyAll(
                                                            EdgeInsets.fromLTRB(20, 10, 20, 10))),
                                                onPressed: () {
                                                  checAnswerHandler(sentence);
                                                },
                                                child: Text(
                                                  "Check",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        }).toList()),
                  )
                : Text(''),
            !gameOver ? DoneAndLeft(leftQuestions, doneQuestions) : Text(""),
          ],
        ),
      ),
    );
  }
}
