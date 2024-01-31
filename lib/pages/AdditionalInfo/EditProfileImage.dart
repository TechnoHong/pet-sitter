import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petke/controllers/image_picker_controller.dart';
import 'package:petke/repositories/user_repository.dart';

class EditProfileImage extends StatelessWidget {
  EditProfileImage({super.key});

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  ImagePickerController imagePickerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Page1"),
        // CircleAvatar(
        //   backgroundImage: ,
        //   radius: 100,
        // ),
        FilledButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => bottomSheet(context)
            );
          }, child: Text("Image Upload")
        ),
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Color iconColor = context.theme.colorScheme.secondary;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          Text("프로필 사진 업로드", style: context.textTheme.headlineSmall,),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 32, color: iconColor,),
                    const SizedBox(height: 5,),
                    Text(
                      "갤러리",
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              const SizedBox(width: 80,),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, size: 32, color: iconColor,),
                    const SizedBox(height: 5,),
                    Text(
                      "카메라",
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      )
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage = await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);

    imagePickerController.setProfileImagePath(pickedFile!.path);
  }
}