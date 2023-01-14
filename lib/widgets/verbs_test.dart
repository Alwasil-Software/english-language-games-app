import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:smile3/utils/data.dart';
import '../widgets/done_and_left.dart';
import '../widgets/show_Score_alert.dart';
import '../models/verb.dart';
import '../widgets/test_score.dart';
import '../main.dart';

class VerbsTest extends StatefulWidget {
  static const test_screen_route = "test-screen-route";

  @override
  State<VerbsTest> createState() => _TestScreenState();
}

class _TestScreenState extends State<VerbsTest> {
  AudioPlayer player = AudioPlayer();
  var finishedTest = false;
  var infinitive = 'infinitive';
  var past = 'past';
  var pastIsDone = false;
  var infinitiveIsDone = false;
  var ppIsDone = false;
  var pp = 'pp';
  var pastTense = '';
  var willAccept = false;
  var ppTense = '';
  var infinitiveTense = '';
  var wrongAnswers = 0;
  var correctAnswers = 0;
  var questionsIndex = 0;
  int doneQuestions = 0;
  int leftQuestions = verbs.length;
  var done = 0;

  var gameOver = false;
  var testFinished = false;
  void changeQuestion() {
    setState(() {
      if (done == 3) {
        if (questionsIndex <= verbs.length) {
          print(leftQuestions);
          questionsIndex = questionsIndex + 1;
          doneQuestions = doneQuestions + 1;
          leftQuestions = leftQuestions - 1;
        }

        if (questionsIndex == verbs.length) {
          questionsIndex = 0;
          gameOver = true;
          testFinished = true;
          player.play(AssetSource('finishedTest.mp3'));
        }
      }

      ;
    });
    if (done == 3) {
      setState(() {
        pastIsDone = false;
        ppIsDone = false;
        infinitiveIsDone = false;
        pastTense = '';
        ppTense = '';
        infinitiveTense = '';
        infinitive = 'infinitive';
        past = 'past';
        pp = 'pp';
        done = 0;
      });
    }
  }

  final widgetKey = GlobalKey();
  final Map<String, dynamic> score = {};

  // var allAnswer =;
  @override
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;
    changeQuestion();

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height - 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Drag and drop each Verb in the Correct place",
                    style: TextStyle(
                        fontSize: _isWindows ? 30 : 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 54, 61)),
                  ),
                  Text(
                    "اسحب كل فعل و ضعه في المكان المناسب",
                    style: TextStyle(
                        fontSize: _isWindows ? 30 : 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 54, 61)),
                  ),
                ],
              ),
            ),
            gameOver
                ? ShowScoreAlert(correctAnswers, wrongAnswers, "Verbs Test")
                : TestScore(wrongAnswers, correctAnswers),
            !gameOver
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: verbs[questionsIndex].map((verb) {
                              return Draggable<Verb>(
                                  data: verb,
                                  child: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      // height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        verb.word,
                                        style: TextStyle(
                                            fontSize: _isWindows ? 40 : 20,
                                            color: MyApp.main_blue,
                                            wordSpacing: 2),
                                      ),
                                    ),
                                  ),
                                  feedback: Card(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      // margin: EdgeInsets.all(2),
                                      alignment: Alignment.center,
                                      // height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      child: Material(
                                          child: Text(
                                        verb.word,
                                        style: TextStyle(
                                            fontSize: _isWindows ? 40 : 20,
                                            color: MyApp.main_blue,
                                            wordSpacing: 2),
                                      )),
                                    ),
                                  ),
                                  childWhenDragging: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      // height: 50,
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  3) -
                                              10,
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: MyApp.main_blue,
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
                  DragTarget<Verb>(
                    builder: (context, candidateData, rejectedData) => Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        height: willAccept ? 120 : 70,
                        width: (MediaQuery.of(context).size.width / 3) - 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: infinitiveTense == "infinitive"
                                ? Colors.green
                                : infinitive == "Wrong"
                                    ? Colors.red
                                    : Colors.black26),
                        child: Text(
                          infinitive,
                          style: TextStyle(
                              fontSize: _isWindows ? 30 : 18,
                              color: Colors.white70,
                              wordSpacing: 2),
                        ),
                      ),
                    ),
                    onWillAccept: (data) {
                      setState(() {
                        willAccept = true;
                      });
                      return true;
                    },
                    onLeave: ((data) {
                      setState(() {
                        willAccept = false;
                      });
                    }),
                    onAccept: (data) {
                      setState(() {
                        if (data.type == "infinitive") {
                          willAccept = false;
                          if (!infinitiveIsDone) {
                            done = done + 1;
                            player.play(AssetSource('succpop.mp3'));
                            correctAnswers = correctAnswers + 1;
                          }
                          infinitiveIsDone = true;
                          infinitive = data.word;
                          infinitiveTense = data.type;
                        } else {
                          if (!infinitiveIsDone) {
                            infinitiveIsDone = true;
                            wrongAnswers = wrongAnswers + 1;
                            player.play(AssetSource('wrong.mp3'));
                          }
                          infinitiveIsDone = true;

                          infinitiveTense = '';
                          infinitive = "Wrong";
                        }
                      });
                    },
                  ),
                  DragTarget<Verb>(
                    builder: (context, candidateData, rejectedData) => Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        height: willAccept ? 120 : 70,
                        width: (MediaQuery.of(context).size.width / 3) - 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: pastTense == "past"
                              ? Colors.green
                              : pastTense == '' && past == "Wrong"
                                  ? Colors.red
                                  : Colors.black26,
                        ),
                        child: Text(
                          past,
                          style: TextStyle(
                              fontSize: _isWindows ? 30 : 18,
                              color: Colors.white70,
                              wordSpacing: 2),
                        ),
                      ),
                    ),
                    onWillAccept: (data) {
                      setState(() {
                        willAccept = true;
                      });
                      return true;
                    },
                    onLeave: ((data) {
                      setState(() {
                        willAccept = false;
                      });
                    }),
                    onAccept: (data) {
                      setState(() {
                        if (data.type == "past") {
                          willAccept = false;

                          if (!pastIsDone) {
                            done = done + 1;
                            correctAnswers = correctAnswers + 1;
                            player.play(AssetSource('succpop.mp3'));
                          }
                          pastIsDone = true;

                          past = data.word;
                          pastTense = data.type;
                        } else {
                          if (!pastIsDone) {
                            wrongAnswers = wrongAnswers + 1;
                            player.play(AssetSource('wrong.mp3'));
                          }
                          pastIsDone = true;

                          pastTense = '';
                          past = "Wrong";
                        }
                      });
                    },
                  ),
                  DragTarget<Verb>(
                      builder: (context, candidateData, rejectedData) => Center(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              height: willAccept ? 120 : 70,
                              width:
                                  (MediaQuery.of(context).size.width / 3) - 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ppTense == "pp"
                                    ? Color.fromRGBO(76, 175, 80, 1)
                                    : pp == "Wrong"
                                        ? Colors.red
                                        : Colors.black26,
                              ),
                              child: Text(
                                pp,
                                style: TextStyle(
                                    fontSize: _isWindows ? 30 : 18,
                                    color: Colors.white70,
                                    wordSpacing: 2),
                              ),
                            ),
                          ),
                      onWillAccept: (data) {
                        setState(() {
                          willAccept = true;
                        });
                        return true;
                      },
                      onLeave: ((data) {
                        setState(() {
                          willAccept = false;
                        });
                      }),
                      onAccept: (data) {
                        setState(() {
                          if (data.type == "pp") {
                            willAccept = false;
                            if (!ppIsDone) {
                              done = done + 1;
                              correctAnswers = correctAnswers + 1;
                              player.play(AssetSource('succpop.mp3'));
                            }
                            ppIsDone = true;
                            pp = data.word;
                            ppTense = data.type;
                          } else if (data.type != "pp") {
                            if (!ppIsDone) {
                              wrongAnswers = wrongAnswers + 1;
                              player.play(AssetSource('wrong.mp3'));
                            }
                            ppIsDone = true;
                            willAccept = false;

                            ppTense = '';
                            pp = "Wrong";
                          }
                        });
                      }),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Text(
                      "Note:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: _isWindows ? 30 : 18,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                        "verbs that have the same form in past and past participle, the past participle starts with capital",
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 15)),
                  )
                ],
              ),
            ),
            !gameOver ? DoneAndLeft(leftQuestions, doneQuestions) : Text("")
          ],
        ),
      ),
    );
  }
}
