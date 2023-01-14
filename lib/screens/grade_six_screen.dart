import 'package:flutter/material.dart';

import 'package:fluttericon/typicons_icons.dart';
import 'package:smile3/main.dart';
import 'package:smile3/screens/grade_six_test_screen.dart';

class GradeSixScreen extends StatefulWidget {
  const GradeSixScreen({super.key});
  static const grade_six_screen_route = "grade-six-screen-route";

  @override
  State<GradeSixScreen> createState() => _GradeSixScreenState();
}

class _GradeSixScreenState extends State<GradeSixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyApp.main_green,
          centerTitle: true,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rosery English",
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height - 50,
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Grade 6",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Smile3",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.yellow.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.question_mark,
                                  color: Color.fromARGB(255, 0, 120, 46),
                                  size: 50,
                                ),
                                Text(
                                  "Quizzes",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 4, 4, 4)),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 18),
                                    "These quizzes are based on a scientific method of learning called active recall, or retrieval practice. "),
                                Card(
                                  color: Colors.cyan,
                                  child: InkWell(
                                      // borderRadius: BorderRadius.circular(20),
                                      highlightColor:
                                          Color.fromARGB(255, 0, 120, 135),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context,
                                            GradeSixTestScreen
                                                .test_screen_route);
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 10, 4),
                                        child: Text(
                                          "Go to Quizzes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Icon(
                                      Typicons.pen,
                                      color: MyApp.main_green,
                                      size: 50,
                                    ),
                                    Text("Learning",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black87))
                                  ],
                                ),
                              ),
                              Text(
                                "soon!",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 18),
                                    "In this section you will learn the basic knowledge about Grammar and Language. It will help you score better result in the quizzes"),
                                Card(
                                  color: Colors.cyan,
                                  child: InkWell(
                                      // borderRadius: BorderRadius.circular(20),
                                      highlightColor:
                                          Color.fromARGB(255, 0, 104, 117),
                                      onTap: () {},
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 10, 4),
                                        child: Text(
                                          "Start Learning",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.games_rounded,
                                      color: MyApp.main_green,
                                      size: 50,
                                    ),
                                    Text("Games",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black87))
                                  ],
                                ),
                              ),
                              Text(
                                "soon!",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 18),
                                    "Here's is the fun part! Enjoy practicing your Enlgish."),
                                Card(
                                  color: Colors.cyan,
                                  child: InkWell(
                                      // borderRadius: BorderRadius.circular(20),
                                      highlightColor:
                                          Color.fromARGB(255, 0, 104, 117),
                                      onTap: () {},
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 10, 4),
                                        child: Text(
                                          "Play",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black12,
                                ),
                                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.run_circle,
                                      color: MyApp.main_green,
                                      size: 50,
                                    ),
                                    Text("Competitions",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black87,
                                            fontFamily: "DancingScript",
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              Text(
                                "soon!",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 18),
                                    "Join to compete with your friends. It's a win-win world!"),
                                Card(
                                  color: Colors.cyan,
                                  child: InkWell(
                                      // borderRadius: BorderRadius.circular(20),
                                      highlightColor:
                                          Color.fromARGB(255, 0, 104, 117),
                                      onTap: () {},
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 10, 4),
                                        child: Text(
                                          "Join",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
