import 'package:datademo/pages/result.dart';
import 'package:datademo/pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';

class SignIn extends StatefulWidget {
  static final String id = "singin";

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var boxs = Hive.box("pdp_online");
  var contName = TextEditingController();
  var contPassword = TextEditingController();

  void _actionButton() {
    String name = contName.text.toString().trim();
    String password = contPassword.text.toString().trim();
    if (boxs.get("userName") == name && boxs.get("password") == password) {
      Navigator.pushReplacementNamed(context, Result.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 59, 1),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: widthSize,
          padding: EdgeInsets.all(widthSize * 0.08),
          // margin: EdgeInsets.all(widthSize * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: widthSize * 0.2,
                height: widthSize * 0.2,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage('assets/images/a.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(widthSize * 0.06),
                ),
              ),
              SizedBox(
                height: widthSize * 0.06,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: widthSize * 0.08),
              ),
              SizedBox(
                height: widthSize * 0.01,
              ),
              Text(
                "Sign in to continue",
                style:
                    TextStyle(color: Colors.white, fontSize: widthSize * 0.05),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contName,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                    hintText: "User Name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contPassword,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: widthSize * 0.08,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: widthSize * 0.18,
              ),
              Container(
                width: widthSize * 0.18,
                height: widthSize * 0.18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  gradient:
                      LinearGradient(begin: Alignment.centerLeft, colors: [
                    Colors.blue.shade700,
                    Colors.blue.shade600,
                    Colors.blue.shade500,
                    Colors.blue.shade300,
                  ]),
                ),
                child: GestureDetector(
                  onTap: () {
                    _actionButton();
                  },
                  child: Center(
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        size: 33,
                      ),
                      onPressed: () {
                        _actionButton();
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: widthSize * 0.24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an accunt?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: widthSize * 0.01,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignUp.id);
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.blue.shade400),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
