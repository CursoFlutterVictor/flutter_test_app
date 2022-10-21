import 'package:flutter/material.dart';
import 'package:flutter_test_app/controller/counter_controller.dart';
import 'package:flutter_test_app/widgets/button_control.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counter = Get.find();
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("HOLA PAGINA 2"),
          Text(counter.result.value.toString()),
        ])),
        floatingActionButton: ButtonControl(
            onPressed: () {
              Get.back();
            },
            icon: Icons.back_hand));
  }
}
