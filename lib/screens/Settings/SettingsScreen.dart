import 'package:flutter/material.dart';
import 'userInformation.dart';
import 'buttons.dart';

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
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: editProfile,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: setStatus
                    )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: SizedBox(
                          height: 60,
                          child: activity
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: SizedBox(
                          height: 60,
                          child: myFiles
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: SizedBox(
                          height: 60,
                          child: changeMood
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