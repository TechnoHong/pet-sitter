import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:petke/repositories/auth_repository.dart';
import 'package:petke/models/Board.dart';
import 'package:petke/repositories/user_repository.dart';
import '../routes.dart';

class ProductModel {
  const ProductModel(this.imageUrl, this.title, this.desc1, this.desc2);
  final String imageUrl;
  final String title;
  final String desc1;
  final String desc2;
}

const productList = [
  ProductModel(
      "url",
      "내이름은 고양이",
      "냐옹냐옹",
      "10시 10분"),
  ProductModel(
      "url",
      "내이름은 고양이",
      "본문",
      "시간"),
  ProductModel("url",
      "내이름은 고양이", "2마리", "시간"),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();

  logOutIconClick() {
    AuthRepository.instance.signOut();
  }
}

class _HomeState extends State<HomePage>{
  writeBtnClick() {
    Get.toNamed(Routes.initial);
  }

  settingIconClick() {
    Get.toNamed(Routes.settingsScreen);
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    Get.put(NavBarController());

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('123'),
      //   actions: [
      //     IconButton(onPressed: settingIconClick, icon: Icon(Icons.settings, size: 20,)),
      //     IconButton(onPressed: logOutIconClick, icon: Icon(Icons.logout, size: 20)),
      //     // child: Text(UserRepository.instance.userProfile?.extraFlag.toString() ?? 'null')),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: writeBtnClick,
        child: Icon(Icons.edit),
      ),
      body : Container(
        child : Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ListView.separated(
                // padding: EdgeInsets.all(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: productList.length,
                itemBuilder:(context, i) {
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.only(top:2, left:3,right: 3, bottom: 1),
                    width: 100,
                    height: 100,
                    child: Row(
                      children: [
                        Image.network("/assets/images/logo.png", width: 90, height: 100,),
                        Expanded(
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      productList[i].title,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      productList[i].desc1,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      productList[i].desc2,
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  );

                },
                separatorBuilder : (BuildContext bc, int index) => const Divider(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }

}