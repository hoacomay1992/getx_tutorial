import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/ui/snackbarPage.dart';

class HomePage extends StatelessWidget {
  final title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: GridView(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.4),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ShowSnackbar()));
                    },
                    child: Container(
                      height: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.indigo[900],
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(
                        'SnackBar, Dialog and Bottom Sheet',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //cách 1
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => SecondPage()));
                      //cách 2
                      // Get.to(SecondPage(),
                      //     arguments: 'Hello from the homePage');

                      //Cách 3
                      Get.toNamed('ui/secondPage',
                          arguments: ['Hello from the homePage']);
                    },
                    child: Container(
                      height: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.blue[500],
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Navidation I Send data to other screen',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => ShowSnackbar()));
                      Get.toNamed('ui/getBuilderPage');
                    },
                    child: Container(
                      height: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.deepOrange[600],
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(
                        'State Management I GetBuider',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => ShowSnackbar()));//Cách thứ nhất

                      //Cách thứ 2 sử dụng GetX
                      Get.toNamed('ui/getxAndObx'); //navigation to secondpage()
                    },
                    child: Container(
                      height: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      color: Colors.green[500],
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(
                        'State Management I Getx & Obx',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Text(
            //     'GetX Tutorial by The Hoacomay Developer',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 15.0,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
          ],
        ));
  }
}
