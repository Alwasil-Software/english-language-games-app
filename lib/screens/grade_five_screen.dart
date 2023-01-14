import 'package:flutter/material.dart';
import '../screens/grade_five_tests_screen.dart';
import '../main.dart';
import './grade_six_test_screen.dart';
import '../widgets/show_section_lessons.dart';

class GradeFiveScreen extends StatefulWidget {
  static const grade_five_screen_route = "grade-five-screen-route";

  @override
  State<GradeFiveScreen> createState() => _GradeFiveScreenState();
}

class _GradeFiveScreenState extends State<GradeFiveScreen> {
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;
    @override
    final grammar = [
      "Present Perfect Continuous",
      "Past Simple",
      "Present Continuous",
      "Present Perfect",
      "Future",
    ];
    final Spelling = [
      "ei words",
      "Suffixes: ful - less",
      "ea words",
      "ant and ance",
      "ie words",
    ];
    final languageBuilding = [
      "reported speech",
      "Direct speech",
      "active and passive",
      "Reporting Clause",
      "reported commands",
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyApp.main_green,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rose English",
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.yellow.shade50,
          // height: MediaQuery.of(context).size.height - 50,
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Grade 5",
                        style: TextStyle(
                            fontSize: _isWindows ? 40 : 30,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Macmillan",
                          style: TextStyle(
                              fontSize: _isWindows ? 30 : 20,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Grammar",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: _isWindows ? 30 : 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      ShowSectionLesson(grammar),
                      Card(
                        color: Colors.cyan,
                        child: InkWell(
                            // borderRadius: BorderRadius.circular(20),
                            highlightColor: Color.fromARGB(255, 0, 120, 135),
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  GradeFiveTestScreen
                                      .grade_five_test_screen_route);
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                "Test Your Grammar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: _isWindows ? 30 : 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Spelling",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: _isWindows ? 30 : 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      ShowSectionLesson(Spelling),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NOt Yet!",
                            style: TextStyle(color: Colors.red),
                          ),
                          Card(
                            color: Colors.cyan,
                            child: InkWell(
                                // borderRadius: BorderRadius.circular(20),
                                highlightColor:
                                    Color.fromARGB(255, 0, 120, 135),
                                onTap: () {
                                  Navigator.pushNamed(context,
                                      GradeSixTestScreen.test_screen_route);
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Text(
                                    "Check Your Spelling",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _isWindows ? 30 : 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Language Building",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: _isWindows ? 30 : 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      ShowSectionLesson(languageBuilding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NOt Yet!",
                            style: TextStyle(color: Colors.red),
                          ),
                          Card(
                            color: Colors.cyan,
                            child: InkWell(
                                // borderRadius: BorderRadius.circular(20),
                                highlightColor:
                                    Color.fromARGB(255, 0, 120, 135),
                                onTap: () {
                                  // Navigator.pushNamed(context,
                                  // GradeSixTestScreen.test_screen_route);
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Text(
                                    "Improve Your Language",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: _isWindows ? 30 : 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
