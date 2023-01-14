import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import './screens/grade_five_screen.dart';
import './screens/grade_five_tests_screen.dart';
import './screens/grade_six_screen.dart';
import './screens/home_screen.dart';
import './screens/login-screen.dart';
import './screens/signup-screen.dart';

import 'screens/grade_six_test_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static var main_blue = Colors.blue.shade800;
  static var main_green = Colors.green.shade900;
  static final main_background = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(255, 255, 255, 255),
      ]);

  @override
  Widget build(BuildContext context) {
    AudioPlayer player = AudioPlayer();

    return MaterialApp(
      title: "Smile",
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              backgroundColor: MyApp.main_green,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "Rosery Int'l School",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: HomeScreen()),
      routes: {
        LoginScreen.Login_screen_route: (context) => LoginScreen(),
        SingupScreen.signup_screen_route: (context) => SingupScreen(),
        GradeSixTestScreen.test_screen_route: (context) => GradeSixTestScreen(),
        GradeSixScreen.grade_six_screen_route: (context) => GradeSixScreen(),
        GradeFiveScreen.grade_five_screen_route: (context) => GradeFiveScreen(),
        GradeFiveTestScreen.grade_five_test_screen_route: (context) =>
            GradeFiveTestScreen(),
      },
    );
  }
}
