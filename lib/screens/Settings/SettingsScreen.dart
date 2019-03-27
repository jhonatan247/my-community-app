import 'package:flutter/material.dart';
import 'userInformation.dart';

class SettingsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: profilePicture
              ),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            Container(
              child: Center(
                child: profileName,
              ),
            ),
            Container(
              child: Center(
                child: profileLocation,
              ),
            ),
          ],
        ),
      ),
    );
  }
}