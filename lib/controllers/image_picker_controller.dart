import 'package:get/get.dart';

class ImagePickerController extends GetxController {
  Rx<bool> isProfilePicPathSet = false.obs;
  Rx<String> profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath(path);
    isProfilePicPathSet(true);
  }
}