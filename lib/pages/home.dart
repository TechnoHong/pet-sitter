import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:petke/controllers/nav_bar_controller.dart';
import 'package:petke/repositories/auth_repository.dart';
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  writeBtnClick(){
    Get.toNamed(Routes.initial);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarController());

    return Scaffold(
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
                    // margin: EdgeInsets.only(top: 5),
                    width: 400,
                    height: 100,

                    child: Row(
                      children: [
                        Image.network("/assets/images/logo.png", width: 90,),
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
