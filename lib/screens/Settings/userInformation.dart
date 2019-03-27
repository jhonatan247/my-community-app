import 'package:flutter/material.dart';

final topBar = new AppBar(
  backgroundColor: Colors.white,
  elevation: 0.5,
  title: Center(
      child: Text(
        'My profile',
        style: TextStyle(color: Colors.black),
      )
  ),
);
var profilePicture = Icon(
  Icons.account_circle,
  size: 250,
);
var profileName = Text(
    'Santiago Velandia',
    style: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.bold
    ),
);
var profileLocation = Text(
  'Colombia',
  style: TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 19
  ),
);