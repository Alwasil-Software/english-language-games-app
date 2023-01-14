import "package:flutter/material.dart";
import 'package:smile3/main.dart';
import 'package:smile3/widgets/Grades.dart';
import 'package:smile3/widgets/app_footer.dart';
import 'package:smile3/widgets/top_pen_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).viewInsets);
    return SingleChildScrollView(
      child: Container(
        color: Colors.yellow.shade50,
        height: MediaQuery.of(context).size.height - 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopPenIcon(),
            Container(
              // padding: EdgeInsets.all(10),
              child: Text(
                "Learning Has to Be Fun!",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: MyApp.main_green,
                    fontFamily: "Cairo"),
              ),
            ),
            Container(
              // margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "English Language",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.cyan,
                ),
              ),
            ),
            Grades(),
            AppFooter()
          ],
        ),
      ),
    );
  }
}
