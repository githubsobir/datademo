import 'package:datademo/pages/sigin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SignUp extends StatefulWidget {
  static final String id = "SINGUP";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var boxs = Hive.box("pdp_online");
  var contUserName = TextEditingController();
  var contEmail = TextEditingController();
  var contPhoneNumber = TextEditingController();
  var contPassword = TextEditingController();

  void action() {
    setState(() {
      String userName = contUserName.text.toString().trim();
      String email = contEmail.text.toString().trim();
      String phoneNumber = contPhoneNumber.text.toString().trim();
      String password = contPassword.text.toString().trim();

      boxs.put("userName", userName);
      boxs.put("email", email);
      boxs.put("phoneNumber", phoneNumber);
      boxs.put("password", password);

      Navigator.pushReplacementNamed(context, SignIn.id);

    });
  }

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 36, 59, 1),
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
              Text(
                "Create",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: widthSize * 0.08),
              ),
              SizedBox(
                height: widthSize * 0.01,
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: widthSize * 0.08),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contUserName,

                style: TextStyle(color:
                Colors.white),
                // cursorWidth: widthSize * 0.4,
                decoration: InputDecoration(

                    // focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),

                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                    hintText: "User Name",
                    hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contEmail,
                // cursorWidth: widthSize * 0.4,
                style: TextStyle(color:
                Colors.white),
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                    hintText: "E-Mail",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contPhoneNumber,
                style: TextStyle(color:
                Colors.white),
                // cursorWidth: widthSize * 0.4,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: Colors.grey,
                    ),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: widthSize * 0.1,
              ),
              TextField(
                controller: contPassword,
                style: TextStyle(color:
                Colors.white),
                // cursorWidth: widthSize * 0.4,
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
                height: widthSize * 0.15,
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
                    action();
                  },
                  child: Center(
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        size: 33,
                      ),
                      onPressed: () { action();},
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
                    "Alredy have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: widthSize * 0.01,
                  ),
                  GestureDetector(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.blue.shade400),
                    ),
                    onTap: () {
                    Navigator.pushReplacementNamed(context,SignIn.id);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
