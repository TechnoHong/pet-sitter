import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:petke/repositories/auth_repository.dart';

import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget listView_Separated(){
    return ListView.separated(
    // padding: EdgeInsets.all(),
      scrollDirection: Axis.vertical,
      itemCount: 100,
      itemBuilder:(context, i) {
        return Container(
          height: 30,
          child:Text('인덱스 ${i}'),
        );
      },
      separatorBuilder : (BuildContext bc, int index) => const Divider(
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      final localizations = AppLocalizations.of(context)!;
      Get.put(NavBarController());
    return Scaffold(
      appBar: AppBar(
        title : Text("홈홈홈"),
        actions: [
          TextButton(onPressed: () {Get.toNamed(Routes.settingsScreen);}, child: Text(localizations.settings_title)),
          TextButton(onPressed: () {AuthRepository.instance.signOut();}, child: Text(localizations.sign_out_title)),
        ],
      ),
      body : SafeArea(
        child : listView_Separated(),
      )
    );
  }

}
