import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GradeFiveLanguageBuildingTest extends StatefulWidget {
  const GradeFiveLanguageBuildingTest({super.key});

  @override
  State<GradeFiveLanguageBuildingTest> createState() =>
      _GradeFiveLanguageBuildingTestState();
}

class _GradeFiveLanguageBuildingTestState
    extends State<GradeFiveLanguageBuildingTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Language Building"),
    );
  }
}
