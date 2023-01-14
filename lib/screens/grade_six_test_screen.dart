import 'package:flutter/material.dart';
import '../widgets/grammar_test_windows.dart';
import '../widgets/adjectives_test.dart';
import '../widgets/grammar_test.dart';
import '../widgets/verbs_test.dart';
import '../main.dart';

class GradeSixTestScreen extends StatefulWidget {
  static const test_screen_route = "test_screen_route";

  @override
  State<GradeSixTestScreen> createState() => _GradeSixTestScreenState();
}

class _GradeSixTestScreenState extends State<GradeSixTestScreen> {
  final List cats = [
    "Grammar",
    "Verbs",
    "Adjectives",
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
                  "Grade 6",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: _isWindows ? 40 : 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rose English",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: _isWindows ? 40 : 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            bottom: TabBar(
                indicatorWeight: 3,
                enableFeedback: true,
                indicatorColor: Colors.cyanAccent,
                tabs: cats.map((cat) {
                  return Tab(
                    text: cat,
                    height: 50,
                  );
                }).toList()),
          ),
          body: Container(
            // height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [
                _isWindows ? GrammarTestWindows() : GrammarTest(),
                VerbsTest(),
                AdjectivesTest(),
              ],
            ),
            color: Colors.yellow.shade50,
          ),
        ));
  }
}
