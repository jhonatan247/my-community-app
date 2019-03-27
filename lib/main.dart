import 'package:flutter/material.dart';
import 'package:my_community/ui/chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Community',
      routes: {
        '/': (context) => MyScaffold(),
        '/second': (context) => Chat(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[100],
        primaryColorBrightness: Brightness.light,
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.work),
          onPressed: () => Navigator.pushNamed(context, '/second'),
        ),
      ),
    );
  }
}
