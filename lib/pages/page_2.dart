import 'package:flutter/material.dart';
import 'package:flutter_test_app/controller/counter_controller.dart';
import 'package:flutter_test_app/widgets/button_control.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("HOLA PAGINA 2"),
          Obx(
            () => Text(counterController.result.value.toString()),
          )
        ])),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonControl(
                onPressed: () {
                  Get.back();
                },
                icon: Icons.arrow_left),
            const SizedBox(
              width: 30,
            ),
            ButtonControl(
                onPressed: () {
                  Get.toNamed("/PAGE3");
                },
                icon: Icons.arrow_right),
          ],
        ));
  }
}
