import 'package:flutter/material.dart';

class Result extends StatefulWidget {

  static final String id = "Result";

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Salom"),
      ),
    );
  }
}
