import "package:flutter/material.dart";
import './change_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: ChangePasswordPage(),
    );
  }
}


