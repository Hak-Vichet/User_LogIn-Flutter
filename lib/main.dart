import 'package:flutter/material.dart';
import 'package:user_login_page/pages/login_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}