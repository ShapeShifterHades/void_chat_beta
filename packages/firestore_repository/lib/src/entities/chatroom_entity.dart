import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ChatroomEntity extends Equatable {
  final String name;
  final String id1;
  final String id2;
  final String lastMessage;
  final String lastMessageFrom;
  final Timestamp lastMessageAt;
  final Timestamp createdAt;

  const ChatroomEntity(
    this.name,
    this.id1,
    this.id2,
    this.lastMessage,
    this.lastMessageFrom,
    this.lastMessageAt,
    this.createdAt,
  );

  Map<String, Object> toJson() {
    return {
      "name": name,
      "id1": id1,
      "id2": id2,
      "createdAt": createdAt,
      "lastMessage": lastMessage,
      "lastMessageAt": lastMessageAt,
      "lastMessageFrom": lastMessageFrom,
    };
  }

  @override
  List<Object> get props => [
        name,
        id1,
        id2,
        createdAt,
        lastMessageAt,
        lastMessageFrom,
        lastMessage,
      ];

  @override
  String toString() {
    return 'TodoEntity { name: $name, id1: $id1, id2: $id2, createdAt: $createdAt }';
  }

  static ChatroomEntity fromJson(Map<String, Object> json) {
    return ChatroomEntity(
      json["name"] as String,
      json["id1"] as String,
      json["id2"] as String,
      json["lastMessageFrom"] as String,
      json["lastMessage"] as String,
      json["lastMessageAt"] as Timestamp,
      json["createdAt"] as Timestamp,
    );
  }

  static ChatroomEntity fromSnapshot(DocumentSnapshot snap) {
    return ChatroomEntity(
      snap.data()["name"],
      snap.data()["id1"],
      snap.data()["id2"],
      snap.data()["lastMessageFrom"],
      snap.data()["lastMessage"],
      snap.data()["lastMessageAt"],
      snap.data()["createdAt"],
    );
  }

  Map<String, Object> toDocument() {
    return {
      "name": name,
      "id1": id1,
      "id2": id2,
      "lastMessageFrom": lastMessageFrom,
      "lastMessage": lastMessage,
      "lastMessageAt": lastMessageAt,
      "createdAt": createdAt,
    };
  }
}
