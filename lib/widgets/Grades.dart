import 'package:flutter/material.dart';
import 'package:smile3/screens/grade_five_screen.dart';
import '../screens/grade_six_screen.dart';

class Grades extends StatelessWidget {
  const Grades({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            shadowColor: Colors.amber.shade50,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 150,
              child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("General",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold)),
                      Text(
                          "Learn the basics of English language in the most modern and fun way!",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey,
                          )),
                      Text("Not Yet",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          )),
                    ],
                  )),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 3,
            shadowColor: Colors.amber.shade100,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 20,

              height: 150,

              //
              child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.pushNamed(
                        context, GradeFiveScreen.grade_five_screen_route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Grade 5",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold)),
                      Text(
                          "Test Yourself in different language building, spelling, and grammar lessons of Macmillan 5.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                          )),
                    ],
                  )),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 3,
            shadowColor: Colors.amber.shade100,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 150,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, GradeSixScreen.grade_six_screen_route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Grade 6",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold)),
                      Text("Explore the most important points of Smile3",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                          )),
                    ],
                  )),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 3,
            shadowColor: Colors.amber.shade100,
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2 - 20,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              height: 150,
              child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Grade 7",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold)),
                      Text(
                          "Learn different types of writing in an interactive and fun way!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                          )),
                      Text(
                          "Suspense, Persuasive, descriptive, fantasy fiction...",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueGrey.shade900,
                          )),
                      Text("Not Yet",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          )),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
