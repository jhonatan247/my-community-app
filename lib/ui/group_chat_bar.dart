import 'package:flutter/material.dart';

class GroupChatBar extends StatefulWidget {
  final Map<String, dynamic> _properties;

  GroupChatBar({@required properties}) : _properties = properties;
  @override
  _GroupChatBarState createState() =>
      _GroupChatBarState(properties: _properties);
}

class _GroupChatBarState extends State<GroupChatBar> {
  final Map<String, dynamic> _properties;
  _GroupChatBarState({@required properties}) : _properties = properties;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
