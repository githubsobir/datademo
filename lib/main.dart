import 'package:datademo/pages/sigin.dart';
import 'package:datademo/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      routes: {
        SignIn.id:(context) => SignIn(),
        SignUp.id:(context)=>SignUp(),
      },
    );
  }
}
