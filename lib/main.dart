// import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'login.dart';
import 'signup.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: SignInPage(),
    );
  }
}


