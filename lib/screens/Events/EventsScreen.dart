import 'package:flutter/material.dart';
import 'userInformation.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EventsScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>{

  var locationTitle = Text(
    'Your location says you are in',
    style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 17
    ),
  );
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: locationTitle
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: actualLocation
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60, 20, 60, 0),
              height: 200,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: Text(
                  'Chats in this location:',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}