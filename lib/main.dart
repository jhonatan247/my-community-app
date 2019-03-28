import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/LoginPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    LoginPage.tag: (context) => LoginPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[100],
        primaryColorBrightness: Brightness.light,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}