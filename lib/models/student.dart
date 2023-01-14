import 'dart:convert';

class Student {
  final String name;
  final String token;
  final String isAdmin;
  final String email;
  final String languageScore;
  final String confirmed;
  final String password;
  final String tests;
  final String schoolName;
  final String age;

  Student({
    required this.name,
    required this.token,
    required this.isAdmin,
    required this.email,
    required this.languageScore,
    required this.confirmed,
    required this.password,
    required this.tests,
    required this.schoolName,
    required this.age,
  });
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "token": token,
      "isAdmin": isAdmin,
      "email": email,
      "languageScore": languageScore,
      "confirmed": confirmed,
      "password": password,
      "tests": tests,
      "schoolName": schoolName,
      "age": age,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
        name: map["name"] ?? "",
        token: map['token'] ?? "",
        isAdmin: map['isAdmin'] ?? "",
        email: map['email'] ?? "",
        languageScore: map['languageScore'] ?? "",
        confirmed: map["confirmed"] ?? "",
        password: map["password"] ?? "",
        tests: map["tests"] ?? "",
        schoolName: map["schoolName"] ?? "",
        age: map["age"] ?? "");
  }
  String toJson() => json.encode(toMap());
  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source));
}
