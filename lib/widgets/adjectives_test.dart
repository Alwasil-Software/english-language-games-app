import 'package:audioplayers/audioplayers.dart';
import '../main.dart';
import '../models/adjective.dart';
import '../utils/adjectives_list.dart';
import './done_and_left.dart';
import "package:flutter/material.dart";
import './show_Score_alert.dart';
import './test_score.dart';

class AdjectivesTest extends StatefulWidget {
  const AdjectivesTest({super.key});

  @override
  State<AdjectivesTest> createState() => _AdjectivesTestState();
}

class _AdjectivesTestState extends State<AdjectivesTest> {
  AudioPlayer player = AudioPlayer();

  var wrong = false;
  var adjective = 'adjective';
  var comparative = 'comparative';
  var superlative = 'superlative';
  var comparativeAdjective = '';
  var superlativeAdjective = '';
  var infinitiveTense = '';
  var wrongAnswers = 0;
  var correctAnswers = 0;
  var questionsIndex = 0;
  var gameOver = false;
  int doneQuestions = 0;
  int leftQuestions = adjectives.length;

  var done = 0;
  var testFinished = false;
  void changeQuestion() {
    setState(() {
      if (done == 3) {
        if (questionsIndex <= adjectives.length) {
          print(leftQuestions);
          questionsIndex = questionsIndex + 1;
          doneQuestions = doneQuestions + 1;
          leftQuestions = leftQuestions - 1;
        }
        if (questionsIndex == adjectives.length) {
          gameOver = true;
          questionsIndex = 0;

          testFinished = true;
        }
      }
      ;
    });
    if (done == 3) {
      setState(() {
        comparativeAdjective = '';
        superlativeAdjective = '';
        infinitiveTense = '';
        adjective = 'adjective';
        comparative = 'comparative';
        superlative = 'superlative';
        done = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    changeQuestion();
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height - 140,
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
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Text(
            //           "comparative",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontFamily: "ChivoMono",
            //               fontWeight: FontWeight.bold,
            //               color: Colors.yellow),
            //         ),
            //         Text(
            //           "& ",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontFamily: "ChivoMono",
            //               fontWeight: FontWeight.bold,
            //               color: Colors.yellow),
            //         ),
            //         Text(
            //           "superlatives",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontFamily: "ChivoMono",
            //               fontWeight: FontWeight.bold,
            //               color: Colors.yellow),
            //         ),
            //       ],
            //     )),

            Container(
              height: 100,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Drag and drop each adjective in the Correct place",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan.shade900),
                  ),
                  Text(
                    "اسحب كل صفة و ضعها في المكان المناسب",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan.shade900),
                  ),
                ],
              ),
            ),
            gameOver
                ? ShowScoreAlert(
                    correctAnswers, wrongAnswers, "Adjectives Test")
                : TestScore(wrongAnswers, correctAnswers),
            !gameOver
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:
                                adjectives[questionsIndex].map((adjective) {
                              return Draggable<Adjective>(
                                  data: adjective,
                                  child: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        adjective.word,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: MyApp.main_green,
                                            wordSpacing: 2),
                                      ),
                                    ),
                                  ),
                                  feedback: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      // margin: EdgeInsets.all(2),
                                      alignment: Alignment.center,
                                      height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      child: Material(
                                          child: Text(
                                        adjective.word,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: MyApp.main_green,
                                            wordSpacing: 2),
                                      )),
                                    ),
                                  ),
                                  childWhenDragging: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: MyApp.main_green,
                                            wordSpacing: 2),
                                      ),
                                    ),
                                  ));
                            }).toList()),
                      )
                    ],
                  )
                : Text(''),
            Container(
              color: Colors.blue.shade100,
              padding: EdgeInsets.all(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DragTarget<Adjective>(
                    builder: (context, candidateData, rejectedData) => Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // margin: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        height: 50,
                        width: (MediaQuery.of(context).size.width / 3) - 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: infinitiveTense == "adjective"
                                ? Colors.green
                                : adjective == "Wrong"
                                    ? Colors.red
                                    : Colors.black26),
                        child: Text(
                          adjective,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              wordSpacing: 2),
                        ),
                      ),
                    ),
                    onWillAccept: (data) => true,
                    onAccept: (data) {
                      setState(() {
                        if (data.type == "adjective") {
                          done = done + 1;
                          adjective = data.word;
                          infinitiveTense = data.type;
                          correctAnswers = correctAnswers + 1;
                          player.play(AssetSource('succpop.mp3'));
                        } else {
                          wrongAnswers = wrongAnswers + 1;
                          player.play(AssetSource('wrong.mp3'));
                          infinitiveTense = '';
                          adjective = "Wrong";
                        }
                      });
                    },
                  ),
                  DragTarget<Adjective>(
                    builder: (context, candidateData, rejectedData) => Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // margin: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        height: 50,
                        width: (MediaQuery.of(context).size.width / 3) - 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: comparativeAdjective == "comparative"
                                ? Colors.green
                                : comparative == "Wrong"
                                    ? Colors.red
                                    : Colors.black26),
                        child: Text(
                          comparative,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              wordSpacing: 2),
                        ),
                      ),
                    ),
                    onWillAccept: (data) => true,
                    onAccept: (data) {
                      setState(() {
                        if (data.type == "comparative") {
                          done = done + 1;
                          comparative = data.word;
                          comparativeAdjective = data.type;
                          correctAnswers = correctAnswers + 1;
                          player.play(AssetSource('succpop.mp3'));
                        } else {
                          wrongAnswers = wrongAnswers + 1;
                          player.play(AssetSource('wrong.mp3'));
                          comparativeAdjective = '';
                          comparative = "Wrong";
                        }
                      });
                    },
                  ),
                  DragTarget<Adjective>(
                    builder: (context, candidateData, rejectedData) => Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // margin: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        height: 50,
                        width: (MediaQuery.of(context).size.width / 3) - 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: superlativeAdjective == "superlative"
                                ? Colors.green
                                : superlative == "Wrong"
                                    ? Colors.red
                                    : Colors.black26),
                        child: Text(
                          superlative,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              wordSpacing: 2),
                        ),
                      ),
                    ),
                    onWillAccept: (data) => true,
                    onAccept: (data) {
                      setState(() {
                        if (data.type == "superlative") {
                          done = done + 1;
                          superlative = data.word;
                          superlativeAdjective = data.type;
                          correctAnswers = correctAnswers + 1;
                          player.play(AssetSource('succpop.mp3'));
                        } else {
                          wrongAnswers = wrongAnswers + 1;
                          player.play(AssetSource('wrong.mp3'));
                          superlativeAdjective = '';
                          superlative = "Wrong";
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            !gameOver ? DoneAndLeft(leftQuestions, doneQuestions) : Text(""),
          ],
        ),
      ),
    );
  }
}
