import 'package:get/state_manager.dart';

class CalController extends GetxController {
  var a = 0.obs;
  var b = 0.obs;
  var sum = 0.obs;
  void add() {
    sum.value = a.value + b.value;
  }
}
