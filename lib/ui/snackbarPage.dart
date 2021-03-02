import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowSnackbar extends StatelessWidget {
  ShowS() {
    Get.snackbar(
      'Demo SnackBar',
      'Demo SnackBar in Getx',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Page'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: double.maxFinite,
                color: Colors.green[500],
                onPressed: () {
                  //Hiển thị SnackBar trong Getx
                  //not change the MaterialApp() widget to GetMaterialApp() widget.
                  Get.snackbar('Demo SnackBar', 'Demo SnackBar in Getx',
                      snackPosition: SnackPosition.BOTTOM,
                      icon: Icon(Icons.ac_unit));
                },
                child: Text(
                  'Show SnackBar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                color: Colors.grey[500],
                onPressed: () {
                  //Show dialog in GetX
                  Get.defaultDialog(
                    title: 'GetX Dialog',
                    content: Column(
                      children: [
                        Text('This is dialog in GetX'),
                        Text('This is amazing')
                      ],
                    ),
                    backgroundColor: Colors.blue[300],
                    actions: ShowS(),
                  );
                },
                child: Text(
                  'Show Dialog',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              MaterialButton(
                minWidth: double.maxFinite,
                color: Colors.blue[500],
                onPressed: () {
                  Get.bottomSheet(Container(
                    height: 130,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Text Bottom Sheet'),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Text Bottom Sheet'),
                          ),
                        ),
                      ],
                    ),
                  ));
                },
                child: Text(
                  'Show Bottom Sheet',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
