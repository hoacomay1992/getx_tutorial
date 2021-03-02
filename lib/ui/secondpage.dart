import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';
import 'snackbarPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Second Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'You have Successfully Navigated to a new screen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              FlatButton(
                color: Colors.black,
                child: Text(
                  'Go to Home Page',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.offAllNamed(
                      '/'); //lưu ý nên sử dụng cách 3 này, sẽ giúp giải quết được những lỗi thường gặp trong quá trình navigator
                },
              ),
              FlatButton(
                color: Colors.black,
                child: Text(
                  'Go to SnackBar Page',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.toNamed(
                      '/snackPage'); //lưu ý nên sử dụng cách 3 này, sẽ giúp giải quết được những lỗi thường gặp trong quá trình navigator
                },
              ),
              Text(
                Get.arguments.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
