import 'package:flutter/material.dart';

Widget eventsNearbyList =
ListView.builder(
  padding: EdgeInsets.all(8.0),
  itemExtent: 110.0,
  itemBuilder: (BuildContext context, int index) {
    return _entryBuilder(index);
  },
);
Widget _entryBuilder (int index){
  return Stack(
    children: <Widget>[
     Container(
       margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
       color: Color(index*100000000),
     ),
     Center(
       child: Text('Chat room $index'),
     ),
    ],
  );
}