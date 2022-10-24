import 'package:get/get.dart';
import 'package:flutter_test_app/controller/counter_controller.dart';

// Una clase Binding por cada Controlador
class CounterBinding extends Bindings {
  // Inyectamos las dependencias del controladotr que va a ser lazy
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
