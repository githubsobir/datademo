import 'package:datademo/pages/result.dart';
import 'package:datademo/pages/sigin.dart';
import 'package:datademo/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("pdp_online");

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
        Result.id:(context)=> Result(),

      },
    );
  }
}
