import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  RxInt result = 0.obs;

  void increment() {
    result.value++;
  }

  void decrement() {
    result.value--;
  }

  void clear() {
    result.value = 0;
  }
}
