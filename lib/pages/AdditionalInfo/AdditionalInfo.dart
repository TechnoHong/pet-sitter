import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:petke/controllers/additional_info_controller.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/pages/AdditionalInfo/EditPetsList.dart';
import 'package:petke/pages/AdditionalInfo/EditProfileImage.dart';
import 'package:petke/pages/AdditionalInfo/EditUserLocation.dart';
import 'package:petke/repositories/user_repository.dart';

import '../../controllers/image_picker_controller.dart';

class AdditionalInfo extends StatelessWidget {
  AdditionalInfo({super.key});

  ImagePickerController imagePickerController = Get.put(ImagePickerController());

  static List<Widget> pages = <Widget>[
    EditProfileImage(),
    const EditUserLocation(),
    const EditPetsList(),
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller = Get.put(AdditionalInfoController());
    final userRepository = UserRepository.instance;

    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Obx(
          () => Scaffold(
              appBar: PetkeAppBar(
                title: localizations.additional_info_title,
                hasBack: true,
              ),
              body: Column(
                children: [
                  LinearPercentIndicator(
                    animation: true,
                    animateFromLastPercent: true,
                    animationDuration: 150,
                    percent:  (controller.pageIndex.value + 1) / pages.length,
                    progressColor: context.theme.colorScheme.secondary,
                    backgroundColor: context.theme.colorScheme.onSecondary,
                    padding: const EdgeInsets.all(0),
                    lineHeight: 2,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: pages[controller.pageIndex.value],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (controller.pageIndex.value == 0) ? TextButton(
                            onPressed: () {
                              userRepository.updateExtraFlag(userRepository.uid.value, true);
                            },
                            child: Text(localizations.additional_later)
                        ) : TextButton(
                            onPressed: () {
                              controller.changePageIndex(controller.pageIndex.value - 1);
                            },
                            child: Text(localizations.additional_prev)
                        ),
                        const SizedBox(width: 16.0,),
                        (controller.pageIndex.value == pages.length - 1) ? FilledButton(
                          onPressed: () {

                          },
                          child: Text(localizations.additional_done)
                        ) : FilledButton(
                          onPressed: () {
                            controller.changePageIndex(controller.pageIndex.value + 1);
                          },
                          child: Text(localizations.additional_next)
                        ),
                      ],
                    ),
                  )
                ],
              )
          )
      ),
    );
  }
}