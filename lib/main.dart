import 'package:flutter/material.dart';
import 'package:login_ui/src/pages/home_page.dart';
import 'package:login_ui/src/pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrial App',
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      routes: {
        '/': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
