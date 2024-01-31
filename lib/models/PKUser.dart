import 'package:cloud_firestore/cloud_firestore.dart';

class PKUser {
  final String uid;
  final String? email;
  final String? alias;
  final bool? extraFlag;

  PKUser({
    required this.uid,
    this.email,
    this.alias,
    this.extraFlag,
  });

  factory PKUser.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return PKUser(
      uid: data?['uid'],
      email: data?['email'],
      alias: data?['alias'],
      extraFlag: data?['extra_flag'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (uid != null) 'uid' : uid,
      if (email != null) 'email' : email,
      if (alias != null) 'alias' : alias,
      if (extraFlag != null) 'extra_flag' : extraFlag,
    };
  }
}