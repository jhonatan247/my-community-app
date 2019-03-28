import 'package:flutter/material.dart';
import 'package:my_community/ui/chat.dart';

Map<String, dynamic> groupProperties = {"chatType" : "group", "bannerImageUrl" : "images/puppies.jpg", "userImageUrl" : "images/johnny.jpg" , "groupName" : "Puppies"};
Map<String, dynamic> personalProperties = {"imageUrl" : "images/johnny.jpg", "userImageUrl" : "images/johnny.jpg", "friendName" : "Johny Depp", "owner" : null};

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Community',
      routes: {
        '/': (context) => MyScaffold(),
        '/second': (context) => Chat(
              properties: personalProperties,
            ),
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
