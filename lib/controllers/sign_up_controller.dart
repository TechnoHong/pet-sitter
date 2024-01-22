import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petke/repositories/auth_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void signUp(String email, String password) async {
    String? error = await AuthRepository.instance.createUserWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(
        GetSnackBar(
          duration: const Duration(seconds: 3),
          message: error.toString(),
        )
      );
    }
  }
}