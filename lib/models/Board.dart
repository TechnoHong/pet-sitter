import 'package:cloud_firestore/cloud_firestore.dart';
import '../routes.dart';

class Board{
  late String? body;
  late List<String>? chats;
  late List<String>? dibs;
  late String? fir_dtt;
  late String? last_dtt;
  late List<String>? pets;
  late String? photo;
  late String? post_id;
  late String? title;
  late String? uid;
  late int? views;

  Board({
    required this.body,
    required this.chats,
    required this.dibs,
    required this.fir_dtt,
    required this.last_dtt,
    required this.pets,
    required this.photo,
    required this.post_id,
    required this.title,
    required this.uid,
    required this.views,
  });

  factory Board.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();

    return Board(
      body : data?['body'],
      chats : data?['chats'],
      dibs : data?['dibs'],
      fir_dtt : data?['fir_dtt'],
      last_dtt : data?['last_dtt'],
      pets : data?['pets'],
      photo : data?['photo'],
      post_id : data?['post_id'],
      title : data?['title'],
      uid : data?['uid'],
      views : data?['views'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'body' : body ?? '',
      'chats' : chats ?? [],
      'dibs' : dibs ?? [],
      'fir_dtt' : fir_dtt ?? '',
      'last_dtt' : last_dtt ?? '',
      'pets' : pets ?? [],
      'photo' : photo ?? '',
      'post_id' : post_id ?? '',
      'title' : title ?? '',
      'uid' : uid ?? '',
      'views' : views ?? '',
    };
  }

}

