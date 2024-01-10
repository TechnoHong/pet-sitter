import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petke/repositories/auth_repository.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> signIn() async {
    String? error = await AuthRepository
        .instance
        .signInWithEmailAndPassword(email.text.trim(), password.text.trim());
    if (error != null) {
      Get.showSnackbar(
        GetSnackBar(
          message: error.toString(),
        )
      );
    }
  }

  Future<void> signInWithGoogle() async {
    String? error = await AuthRepository
        .instance
        .signInWithGoogle();
    if (error != null) {
      Get.showSnackbar(
          GetSnackBar(
            message: error.toString(),
          )
      );
    }
  }
}