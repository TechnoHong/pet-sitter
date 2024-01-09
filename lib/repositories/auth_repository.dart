import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../routes.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialPage);
  }

  _setInitialPage(User? user) {
    if (user == null) {
      Get.offAllNamed(Routes.signInScreen);
    } else {
      Get.offAllNamed(Routes.mainScreen);
    }
  }

  Future<String?> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(firebaseUser.value != null) {
        Get.offAllNamed(Routes.mainScreen);
      } else {
        Get.offAllNamed(Routes.signInScreen);
      }
    } on FirebaseAuthException catch (e) {
      return e.toString();
    }
    return null;
  }

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return e.toString();
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}