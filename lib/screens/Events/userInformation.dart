import 'package:flutter/material.dart';

final topBar = new AppBar(
  backgroundColor: Colors.white,
  elevation: 0.5,
  title: Center(
      child: Text(
        'Search any event',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400
        ),
      )
  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      onPressed: (){},
    )
  ],
);
var actualLocation = Text(
    'Central Park, New York',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
);





