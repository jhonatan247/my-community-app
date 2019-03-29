import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String text;
  final DateTime date;
  final String owner;
  final String imageUrl;
  final DocumentReference reference;

  Message.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['text'] != null),
        assert(map['date'] != null),
        assert(map['owner'] != null),
        text = map['text'],
        date = map['date'],
        owner = map['owner'],
        imageUrl = map['imageUrl'];

  Message.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
