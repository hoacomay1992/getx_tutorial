import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/ui/getBuilder.dart';
import 'package:getx_tutorial/ui/getxobxpage.dart';
import 'package:getx_tutorial/ui/homepage.dart';
import 'package:getx_tutorial/ui/secondpage.dart';
import 'package:getx_tutorial/ui/snackbarPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //show SnackBar, Dialog, BottomSheet

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        title: 'Show Snackbar, Dialog, Bottom Sheet',
      ),
      getPages: [
        GetPage(name: 'ui/', page: () => HomePage()),
        GetPage(name: 'ui/snackPage', page: () => ShowSnackbar()),
        GetPage(name: 'ui/secondPage', page: () => SecondPage()),
        GetPage(name: 'ui/getBuilderPage', page: () => GetBuilderPage()),
        GetPage(name: 'ui/getxAndObx', page: () => getxObxPage()),
      ],
    );

    // return GetMaterialApp(
    //     title: "State Management GetX, Obx, GetBuilder", home: getxObxPage());
  }
}
