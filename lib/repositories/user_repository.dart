import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:petke/repositories/auth_repository.dart';

import '../models/PKUser.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final db = FirebaseFirestore.instance.collection('users');

  Rx<String> uid = "".obs;
  PKUser? userProfile;

  @override
  void onReady() {

  }

  Future<String?> setUid(String uid) async {
    userProfile = await findUserByUid(uid);
    return this.uid(uid);
  }

  Future<PKUser?> findUserByUid(String uid) async {
    final ref = db.doc(uid).withConverter(
        fromFirestore: PKUser.fromFirestore,
        toFirestore: (PKUser user, _) => user.toFirestore(),
    );
    final docSnap = await ref.get();
    final user = docSnap.data();

    if (user != null) {
      return user;
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          duration: Duration(seconds: 3),
          message: '유저 정보를 찾을 수 없습니다.',
        )
      );
      AuthRepository.instance.signOut();
    }

    return null;
  }

  Future<bool> isRequireAdditionalInfo(String uid) async {
    final docRef = db.doc(uid);
    final bool flag = await docRef.get().then(
          (DocumentSnapshot doc) {
            final data = doc.data() as Map<String, dynamic>;
            bool flag = data['extra_flag'];
            return !flag;
            },
      onError: (e) {
            print("Error getting User document: $e");
            return true;
      }
    );
    return flag;
  }

  Future<void> putUserInfoInit(String uid, String? email, String? alias) async {
    await db.doc(uid).set({
      'uid': uid,
      'email': email ?? "unknown",
      'alias': alias ?? "unknown",
      'extra_flag': false,
    });
  }

  Future<void> updateExtraFlag(String uid, bool flag) async {
    await db.doc(uid).update({
      'extra_flag': flag,
    });
  }
}