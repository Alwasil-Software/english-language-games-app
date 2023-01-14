import 'package:flutter/material.dart';

import 'package:smile3/main.dart';

class TopPenIcon extends StatelessWidget {
  const TopPenIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          // height: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: MyApp.main_green,
              borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(70))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Give Your",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        // fontFamily: "DancingScript",
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Child",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            fontFamily: "DancingScript",
                            fontWeight: FontWeight.w900),
                      ),
                      const Icon(
                        Icons.emoji_emotions,
                        color: Colors.yellow,
                        size: 50,
                      ),
                    ],
                  ),
                  const Text(
                    "A chance To Smile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
