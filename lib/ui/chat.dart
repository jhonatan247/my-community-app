import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_community/ui/personal_chat_bar.dart';
import 'package:my_community/ui/group_chat_bar.dart';

const String _name = "User Name";

class Chat extends StatefulWidget {
  final Map<String, dynamic> _properties;

  Chat({@required properties}) : _properties = properties;

  @override
  _ChatState createState() => _ChatState(properties: _properties);
}

class _ChatState extends State<Chat> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();
  bool _isComposing = false;
  final Map<String, dynamic> _properties;

  _ChatState({@required properties}) : _properties = properties;

  void _handleSubmited(String text) {
    _textController.clear();
    setState(() => _isComposing = false);
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this,
      ),
    );
    setState(() => _messages.insert(0, message));
    message.animationController.forward();
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (String text) =>
                    setState(() => _isComposing = text.length > 0),
                onSubmitted: _handleSubmited,
                decoration: new InputDecoration.collapsed(
                    hintText: "Type a message here"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                color: Colors.blue[400],
                onPressed: _isComposing
                    ? () => _handleSubmited(_textController.text)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GroupChatBar(
        properties: {
          "groupName": "Puppies",
          "imageUrl": "images/puppies.jpg"
        },
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? BoxDecoration(
                border:
                    new Border(top: new BorderSide(color: Colors.grey[200])),
              )
            : null,
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.insert_emoticon),
            color: Colors.grey[400],
            onPressed: () => true,
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            color: Colors.grey[400],
            onPressed: () => true,
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[400],
            onPressed: () => true,
          ),
          IconButton(
            icon: Icon(Icons.image),
            color: Colors.grey[400],
            onPressed: () => true,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController});

  final String text;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
      axisAlignment: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(child: Text(_name[0])),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(_name, style: Theme.of(context).textTheme.subhead),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
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
