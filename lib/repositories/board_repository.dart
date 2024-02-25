import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:petke/models/Board.dart';

class BoardRepository{
  static int COUNT = 10;
  final db = FirebaseFirestore.instance.collection("posts");
  List<Board> items = [];

  Future<String?> getBoardList(String uid) async {
    db.get().then((querySnapshot) {
        return querySnapshot.docs.map( (DocumentSnapshot document){
          return Board.fromFirestore();
        }).toList();
      },
      onError: (e) => print("Error completing: $e"),
    );
  }



  


}