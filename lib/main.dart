import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home.dart';
import 'screens/login_page.dart';
import 'screens/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.path,
      routes: {
        LoginPage.path: (context) => LoginPage(),
        HomePage.path: (context) => HomePage(),
        SignUp.path: (context) => SignUp()
      },
    );
  }
}
