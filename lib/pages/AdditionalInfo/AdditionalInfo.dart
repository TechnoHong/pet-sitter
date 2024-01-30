import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/additional_info_controller.dart';
import 'package:petke/layout/petkeAppBar.dart';
import 'package:petke/pages/AdditionalInfo/EditPetsList.dart';
import 'package:petke/pages/AdditionalInfo/EditProfileImage.dart';
import 'package:petke/pages/AdditionalInfo/EditUserLocation.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  static List<Widget> pages = <Widget>[
    const EditProfileImage(),
    const EditUserLocation(),
    const EditPetsList(),
  ];

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final controller = Get.put(AdditionalInfoController());

    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Obx(
          () => Scaffold(
              appBar: PetkeAppBar(
                title: '추가 정보',
                hasBack: true,
              ),
              body: Column(
                children: [
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
                              // todo
                            },
                            child: Text('나중에 하기')
                        ) : TextButton(
                            onPressed: () {
                              controller.changePageIndex(controller.pageIndex.value - 1);
                            },
                            child: Text('이전')
                        ),
                        const SizedBox(width: 16.0,),
                        (controller.pageIndex.value == pages.length - 1) ? FilledButton(
                          onPressed: () {

                          },
                          child: Text('완료')
                        ) : FilledButton(
                          onPressed: () {
                            controller.changePageIndex(controller.pageIndex.value + 1);
                          },
                          child: Text('다음')
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