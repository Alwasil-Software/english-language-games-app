import 'package:flutter/material.dart';
import 'package:smile3/widgets/grammar_test.dart';
import 'package:smile3/widgets/grade_five_language_building_test.dart';
import 'package:smile3/widgets/grade_five_spelling_test.dart';
import 'package:smile3/widgets/grammar_test_windows.dart';

import '../main.dart';

class GradeFiveTestScreen extends StatefulWidget {
  static const grade_five_test_screen_route = "grade_five_test_screen_route";

  @override
  State<GradeFiveTestScreen> createState() => _GradeFiveTestScreenState();
}

class _GradeFiveTestScreenState extends State<GradeFiveTestScreen> {
  final List cats = [
    "Grammar",
    "Spelling",
    "L. Buidling",
  ];

  @override
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: MyApp.main_green,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grade  5",
                  style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: _isWindows ? 30 : 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rose English",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: _isWindows ? 30 : 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            bottom: TabBar(
                indicatorWeight: 4,
                indicatorColor: Colors.cyanAccent,
                tabs: cats.map((cat) {
                  return Tab(
                    text: cat,
                    // height: 50,
                  );
                }).toList()),
          ),
          body: Container(
            child: TabBarView(
              children: [
                _isWindows ? GrammarTestWindows() : GrammarTest(),
                GradeFiveSpellingTest(),
                GradeFiveLanguageBuildingTest(),
              ],
            ),
            color: Colors.yellow.shade50,
          ),
        ));
  }
}
