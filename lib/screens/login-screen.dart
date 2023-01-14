import 'dart:convert';

import "package:flutter/material.dart";
import 'package:fluttericon/typicons_icons.dart';
import 'package:smile3/main.dart';
import 'package:smile3/screens/signup-screen.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const Login_screen_route = "/login-screen-route";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final url = "https://smile3-eng.onrender.com/api/students/login";
  void fetchStudent() async {
    try {
      final res = await post(Uri.parse(url), body: {
        emailController.text,
        passwordController
      }, headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8"
      });
      final student = jsonDecode(res.body) as List<dynamic>;
      print(student);
      // }
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smile"),
        backgroundColor: MyApp.main_blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyApp.main_blue,
            ),
            width: MediaQuery.of(context).size.width - 50,
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Login",
                    style: TextStyle(
                        fontFamily: "Lobster",
                        fontSize: 50,
                        color: Colors.yellow)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Email",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter an Email ',
                          hintStyle: TextStyle(color: Colors.white70),
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            size: 30,
                            color: Colors.white10,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Password",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a Password',
                          hintStyle: TextStyle(color: Colors.white70),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_sharp,
                            size: 30,
                            color: Colors.white10,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(
                          builder: (context) => Center(
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.yellow)),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 20, color: MyApp.main_blue),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context,
                                      SingupScreen.signup_screen_route);
                                }),
                          ),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.yellow)),
                            onPressed: fetchStudent,
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 20, color: MyApp.main_blue),
                            ))
                      ],
                    ),
                  )
                  // login form
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
