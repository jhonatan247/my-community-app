import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{

  var profilePicture = Icons.account_circle;
  var name = Text(
    'Santiago Velandia Casas',
    style: TextStyle(
        fontFamily: 'RobotoBold',
        fontSize: 23
    ),
  );
  var travels = 0;
  var friends = 0;
  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
    title: Center(child: Text('My profile')),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Icon(
                profilePicture,
                size: 200,
              ),
            ),
            Center(
              child: Container(
                child: name,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: OutlineButton(
                        color: Colors.white70,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
                        child: Center(
                          child: Text(
                            '$travels Travels',
                          ),
                        ),
                        onPressed: (){},
                      )
                  ),
                  Expanded(
                      child: OutlineButton(
                        color: Colors.white70,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0)),
                        child: Center(
                          child: Text(
                            '$friends Friends',
                          ),
                        ),
                        onPressed: (){},
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}