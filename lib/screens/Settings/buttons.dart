import 'package:flutter/material.dart';

var editProfile = FlatButton(
  onPressed: (){},
  child: Text('Edit Profile'),
  color: Color(0xffdedede),
);
var setStatus = RaisedButton.icon(
    elevation: 0.3,
    color: Colors.white,
    onPressed: (){},
    icon: Icon(Icons.party_mode),
    label: Text('Set a status')
);
var activity = RaisedButton.icon(
    elevation: 0.3,
    color: Colors.white,
    onPressed: (){},
    icon: Icon(Icons.notifications),
    label: Text('Activity')
);
var myFiles = RaisedButton.icon(
    elevation: 0.3,
    color: Colors.white,
    onPressed: (){},
    icon: Icon(Icons.attach_file),
    label: Text('My files')
);
var changeMood = RaisedButton.icon(
    elevation: 0.3,
    color: Colors.white,
    onPressed: (){},
    icon: Icon(Icons.mood),
    label: Text('Change Mood')
);