import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:petke/repositories/exceptions/auth_exceptions.dart';

import '../routes.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      firebaseUser = Rx<User?>(_auth.currentUser);
      firebaseUser.bindStream(_auth.userChanges());
      ever(firebaseUser, _setInitialPage);
    });
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
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    }
    return null;
  }

  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      return ex.message;
    }
    return null;
  }

  Future<String?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    try {
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithCredential.code(e.code);
      return ex.message;
    }

    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}