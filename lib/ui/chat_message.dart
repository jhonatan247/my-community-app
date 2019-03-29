import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.imageUrl, this.owner, this.animationController});

  final String text;
  final String imageUrl;
  final String owner;
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0, left: 16.0),
              child: imageUrl == null
                  ? CircleAvatar(
                      child: Icon(Icons.person, color: Colors.black38),
                    )
                  : Container(
                      child: Material(
                        child: Image.asset(
                          this.imageUrl,
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
            ),
            Container(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  textAlign:
                      this.owner == null ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: this.owner == null ? Colors.white : Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: this.owner == null ? Colors.blue[300] : Colors.grey[400],
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              margin: this.owner == null
                  ? EdgeInsets.only(left: 50.0)
                  : EdgeInsets.only(right: 50.0),
            ),
          ],
          textDirection:
              this.owner == null ? TextDirection.rtl : TextDirection.ltr,
        ),
      ),
    );
  }
}
