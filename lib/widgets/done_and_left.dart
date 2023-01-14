import "package:flutter/material.dart";
import 'package:smile3/main.dart';

class DoneAndLeft extends StatelessWidget {
  final leftQuestions;
  final doneQuestions;
  DoneAndLeft(this.leftQuestions, this.doneQuestions);
  @override
  Widget build(BuildContext context) {
    bool _isWindows = Theme.of(context).platform == TargetPlatform.windows;

    return _isWindows
        ? Container(
            // margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Questions Done: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      )),
                  Text("$leftQuestions",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Questions left: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      )),
                  Text("$leftQuestions",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ]),
              ],
            ),
          )
        : Container(
            // margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: MyApp.main_green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "$doneQuestions",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: MyApp.main_green,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$leftQuestions",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                      ]),
                ),
              ],
            ),
          );
  }
}
