import 'package:get/get.dart';
import 'package:getx_tutorial/models/valueModel.dart';

/**
 * Rx Variables
 */
class ValueController extends GetxController {
  final valueModel = ValueModel()
      .obs; //Khai báo một observables lắng nghe sự thay đổi của biến valueModel
  updateTheValues(String newValue1, String newValue2) {
    //Method update của valueModel sẽ theo dõi các biến của biến valueModel
    // Updating rx variables
    valueModel.update((model) {
      model.value1 = newValue1;
      model.value2 = newValue2;
    });
  }
}
