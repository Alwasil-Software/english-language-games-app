import 'dart:convert';

import '../utils/gobal_varibles.dart';
import 'package:http/http.dart' as http;
import '../models/student.dart';

Future signUpUser(
    {required String name,
    required String password,
    required String email,
    required String age,
    required String schoolName}) async {
  final url = "$base_url/students/signup";

  try {
    Student student = Student(
      name: name,
      token: "",
      isAdmin: " ",
      email: email,
      languageScore: "",
      confirmed: "",
      password: password,
      tests: "",
      schoolName: schoolName,
      age: age,
    );

    final res = await http.post(Uri.parse(url),
        body: jsonEncode(<String, String>{
          "name": name,
          "password": password,
          "email": email,
          "age": age,
          "schoolName": schoolName
        }),
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
          // 'Accept': 'application/json',
        });
    print(res.body);
    final newStudent = await json.decode(res.body);
    print(name);
  } catch (err) {
    print(err);
  }
}
