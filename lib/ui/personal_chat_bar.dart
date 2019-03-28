import 'package:flutter/material.dart';

class PersonalChatBar extends StatefulWidget implements PreferredSizeWidget {
  final Map<String, dynamic> _properties;

  PersonalChatBar({@required properties}) : _properties = properties;

  @override
  _PersonalChatBarState createState() =>
      _PersonalChatBarState(properties: _properties);

  @override
  Size get preferredSize {
    return Size.fromHeight(56.0);
  }
}

class _PersonalChatBarState extends State<PersonalChatBar> {
  final Map<String, dynamic> _properties;

  _PersonalChatBarState({@required properties}) : _properties = properties;

  @override
  Widget build(BuildContext context) {
    // TODO: change the hardcoded way to the "downloaded from firestore" mode
    return AppBar(
      title: FlatButton(
        child: Row(
          children: <Widget>[
            Container(
              child: _properties["imageUrl"] == null
                  ? CircleAvatar(
                      child: Icon(Icons.person, color: Colors.black38),
                    )
                  : Material(
                      child: Image.asset(
                        _properties["imageUrl"],
                        fit: BoxFit.cover,
                      ),
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                    ),
              constraints: BoxConstraints(
                  minHeight: 35.0,
                  minWidth: 35.0,
                  maxHeight: 40.0,
                  maxWidth: 40.0),
            ),
            Column(
              children: <Widget>[
                Text(
                  _properties["friendName"],
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.brightness_1,
                          color: Colors.lightGreenAccent[400], size: 8.0),
                      margin: EdgeInsets.only(right: 4.0),
                    ),
                    Text(
                      "state",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        onPressed: () {},
        padding: EdgeInsets.all(0.0),
      ),
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
