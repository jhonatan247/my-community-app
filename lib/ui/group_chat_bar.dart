import 'package:flutter/material.dart';

class GroupChatBar extends StatefulWidget implements PreferredSizeWidget {
  final Map<String, dynamic> _properties;

  GroupChatBar({@required properties}) : _properties = properties;

  @override
  _GroupChatBarState createState() =>
      _GroupChatBarState(properties: _properties);

  @override
  Size get preferredSize {
    return Size.fromHeight(2 * 56.0);
  }
}

class _GroupChatBarState extends State<GroupChatBar> {
  final Map<String, dynamic> _properties;

  _GroupChatBarState({@required properties}) : _properties = properties;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Material(
            child: Image.asset(
              _properties["bannerImageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.of(context).pop(),
                  color: Colors.white,
                ),
                alignment: Alignment.topLeft,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    _properties["groupName"],
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 60.0, bottom: 30.0),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.6, 0.7, 0.8, 0.9],
              colors: <Color>[
                Colors.black12,
                Colors.black26,
                Colors.black38,
                Colors.black45,
                Colors.black54,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
