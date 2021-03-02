import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/counterController.dart';
import 'package:getx_tutorial/controllers/valueController.dart';

class getxObxPage extends StatelessWidget {
  //khởi tạo biến này để dùng cho GetBuider
  //CounterController controller = Get.put(CounterController()); //0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetxObxControler In Flutter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //View lăng nghe sự thay đổi thông qua ValueController như sau
              //Cách 1 sử dụng GetX<Controllers>
              //Getx
              GetX<ValueController>(
                init: ValueController(),
                builder: (_) {
                  return Text(
                    'This is value 1 GetX: ${_.valueModel.value.value1}',
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              //Cách 2 sử dụng Obx(()=>Text('${controller.name}'))
              //ObX
              Obx(
                () => Text(
                  'This is value 2 Obx: ${Get.find<ValueController>().valueModel.value.value2}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GetBuilder<CounterController>(
                init: CounterController(),
                builder: (controller) {
                  return Text(
                    'This is value 3 getBuider: ${controller.count}',
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              FlatButton(
                color: Colors.black,
                child: Text(
                  'Change the value',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  //hàm này có thể biến tấu bằng cách gọi trực tiếp hàm update và xử lý ở đây
                  //nhưng ta có thể viết ValueController xử lý các tác vụ trước và phần View chỉ việc gọi ra để dung

                  Get.find<ValueController>()
                      .updateTheValues('new value getx', 'new value obx');
                  //có 2 cách để sử dụng GetBuider như bên dưới. nhưng ta nên dùng các 1
                  //không cần tạo thêm biến controller như ở  0
                  Get.find<CounterController>().increamentCounter(); //1
                  //controller.increamentCounter(); //2
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
