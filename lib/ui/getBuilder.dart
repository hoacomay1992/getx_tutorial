import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/counterController.dart';

class GetBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Builder In Flutter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GetBuilder<CounterController>(
                init: CounterController(),
                builder: (controller) {
                  return Text(
                    'This is increment: ${controller.count}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  );
                },
              ),
              FlatButton(
                color: Colors.black,
                child: Text(
                  'Increment the value',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.find<CounterController>().increamentCounter();
                  //controller.increamentCounter();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  CounterController controller = Get.put(CounterController());
}
