import "package:flutter/material.dart";

class NounsTestScreen extends StatefulWidget {
  static const nouns_test_screen_route = 'nouns-test-screen-route';
  const NounsTestScreen({super.key});

  @override
  State<NounsTestScreen> createState() => _NounsTestScreenState();
}

class _NounsTestScreenState extends State<NounsTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Nouns Test Screen")),
    );
  }
}
