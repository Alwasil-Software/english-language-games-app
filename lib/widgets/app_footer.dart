import 'package:flutter/material.dart';
import '../main.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyApp.main_green,
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //     padding: EdgeInsets.all(5),
                    //     child: Text(
                    //       "Rosery Int'l School",
                    //       style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.yellow),
                    //     )),
                    Container(
                      child: Text(
                          "This App is build on the language aquisition theory. It is a good method of learning English Grammar",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15)),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12,
                ),
                // height: 150,
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Developer",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow),
                        )),
                    Wrap(children: [
                      Text("Mr. Abdulhafeez",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 15)),
                      Text(
                        "an  English Language teacher and a computer programmer.",
                        style:
                            TextStyle(fontSize: 15, color: Colors.cyanAccent),
                      )
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
