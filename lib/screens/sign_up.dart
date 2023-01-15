// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/custom_textField.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  static const String path = "signUp";
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  toast(text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red, fontFamily: "Raleway"),
      ),
    ));
  }

  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 243, 240, 240),
    ));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 240, 240),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 240, 240),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Text(
            "Let's Get Started",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Create an account to Q Allure to get all Features",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            blurRadius: 25,
                          ),
                        ],
                      ),
                      child: CustomTextField(
                        controller: emailController,
                        hintText: "Email",
                        obscureText: _obscureText,
                        suffixIcon: SizedBox.shrink(),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.email,
                            color: Colors.blueGrey,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field must not be empty!";
                          } else if (!value.contains("@gmail.com")) {
                            return "please enter a valid email";
                          }
                          return null;
                        },
                      )),
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.8),
                            blurRadius: 25,
                          ),
                        ],
                      ),
                      child: CustomTextField(
                          controller: passController, hintText: "Password")),
                  SizedBox(height: 15),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        elevation: 10,
                        minimumSize: Size(280, 40),
                        shape: StadiumBorder(),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passController.text);
                            Fluttertoast.showToast(
                              msg: "Successfully created",
                              gravity: ToastGravity.BOTTOM,
                            );
                            Navigator.of(context).pushNamed(LoginPage.path);
                          } catch (e) {
                            toast("Email is invalid or already taken");
                          }
                        }
                      },
                      child: Text(
                        "CREATE",
                        style: TextStyle(
                          fontFamily: "Raleway",
                        ),
                      )),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginPage.path);
                        },
                        child: Text(
                          "Login here",
                          style: TextStyle(
                              color: Colors.blueGrey, fontFamily: "Raleway"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
