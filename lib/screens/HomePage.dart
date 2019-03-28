import 'package:flutter/material.dart';
import 'Settings/SettingsScreen.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    final profileImage = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/test.jpg'),
        ),
      ),
    );

    return Scaffold(
      body: Center(

        child: Column(children: <Widget>[
          profileImage,
          _widgetOptions.elementAt(_selectedIndex),
        ],)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.question_answer, color: Colors.blue,), title: Text('Chat')),
          BottomNavigationBarItem(icon: Icon(Icons.people, color: Colors.blue,), title: Text('Events')),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.blue,), title: Text('Settings')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}