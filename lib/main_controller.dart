import 'package:get/get.dart';

class MainController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
  void decrement() {
    count--;
    update();
  }
  void zero() {
    count = 0;
    update();
  }
}