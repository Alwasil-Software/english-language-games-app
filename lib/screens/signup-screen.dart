import "package:flutter/material.dart";
import 'package:smile3/main.dart';
import 'package:smile3/services/signup_student.dart';
import "./login-screen.dart";

class SingupScreen extends StatefulWidget {
  SingupScreen({super.key});
  static const signup_screen_route = "/signup-screen-route";

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _schoolNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            "Smile3",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ]),
        backgroundColor: MyApp.main_blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: MyApp.main_background),
          color: MyApp.main_blue,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyApp.main_blue,
              ),
              width: MediaQuery.of(context).size.width - 50,
              // height: MediaQuery.of(context).size.height / 3 +
              //     MediaQuery.of(context).size.height / 3,
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text("Register",
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
                      child: Text("name",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.yellow, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(color: Colors.white70),
                            suffixIcon: Icon(
                              Icons.person_outline,
                              size: 30,
                              color: Colors.white10,
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("school",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: _schoolNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Your School',
                            hintStyle: TextStyle(color: Colors.white70),
                            suffixIcon: Icon(
                              Icons.home,
                              size: 30,
                              color: Colors.white10,
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("email",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: _emailController,
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
                      child: Text("age",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: _ageController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'What\'s your age?',
                            hintStyle: TextStyle(color: Colors.white70),
                            suffixIcon: Icon(
                              Icons.child_care_rounded,
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
                        controller: _passwordController,
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
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20, color: MyApp.main_blue),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, LoginScreen.Login_screen_route);
                                },
                              ),
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromRGBO(255, 235, 59, 1))),
                              onPressed: () {
                                signUpUser(
                                    name: _nameController.text,
                                    password: _passwordController.text,
                                    age: _ageController.text,
                                    email: _emailController.text,
                                    schoolName: _schoolNameController.text);
                              },
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
      ),
    );
  }
}
