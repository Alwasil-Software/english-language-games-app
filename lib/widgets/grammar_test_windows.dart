import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:smile3/widgets/check_and_next_btns.dart';
import 'package:smile3/widgets/suggestions.dart';
import '../utils/data.dart';

import '../widgets/done_and_left.dart';
import '../widgets/show_Score_alert.dart';
import '../widgets/test_score.dart';

class GrammarTestWindows extends StatefulWidget {
  const GrammarTestWindows({super.key});

  @override
  State<GrammarTestWindows> createState() => _GrammarTestWindowsState();
}

class _GrammarTestWindowsState extends State<GrammarTestWindows> {
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
        height: MediaQuery.of(context).size.height - 50,
        color: Colors.yellow.shade300,
        child: gameOver
            ? Center(
                child: ShowScoreAlert(
                    correctAnswers, wrongAnswers, "Grammar Test"))
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          // height: MediaQuery.of(context).size.height - 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // height: 200,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Grammar",
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontFamily: "ChivoMono",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.cyan),
                                    ),
                                  ),
                                  DoneAndLeft(leftQuestions, doneQuestions),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Type the correct verb in the black space",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 54, 61)),
                                        ),
                                        Text(
                                          " اكتب الفعل المناسب في المكان الشاغر",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 0, 54, 61)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              TestScore(wrongAnswers, correctAnswers),
                            ],
                          )),
                      Container(
                        // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: grammar_sentenecs[questionsIndex]
                                .map<Widget>((sentence) {
                              setState(() {
                                missingWord = sentence.missingWord;
                              });
                              return Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width /
                                            3 +
                                        MediaQuery.of(context).size.width / 3,
                                    height: MediaQuery.of(context).size.height -
                                        200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Suggestions(sentence),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          padding:
                                              EdgeInsets.fromLTRB(0, 10, 0, 10),
                                          margin:
                                              EdgeInsets.fromLTRB(5, 30, 5, 20),
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
                                              width: 150,
                                              height: 50,
                                              child: correct
                                                  ? Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.green,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        sentence.missingWord,
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  : TextField(
                                                      onChanged: (text) {},
                                                      controller:
                                                          _missingWordController,
                                                      decoration:
                                                          InputDecoration(
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
                                                      fontSize: 25,
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
                                    ),
                                  ),
                                ],
                              );
                            }).toList()),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
