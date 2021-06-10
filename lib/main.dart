import 'package:flutter/material.dart';
import 'package:hypernews/screens/home.dart';
import 'package:hypernews/screens/login.dart';
import 'package:hypernews/screens/register.dart';
import 'package:hypernews/services/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffB9143A),
      ),
      home: LoginScreen(),
    );
  }
}
