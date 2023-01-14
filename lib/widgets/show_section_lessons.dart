import 'package:flutter/material.dart';

class ShowSectionLesson extends StatelessWidget {
  final lessons;
  ShowSectionLesson(this.lessons);
  @override
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;

    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          // color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(20)),
      child: Wrap(
        children: lessons.map<Widget>((lesson) {
          return Card(
            margin: EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(5),
              child: Text(
                lesson,
                style: TextStyle(
                    color: Colors.blueGrey, fontSize: _isWindows ? 30 : 15),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
