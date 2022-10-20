import 'package:flutter/material.dart';
import 'package:flutter_test_app/widgets/button_control.dart';
import 'package:get/get.dart';
import 'package:flutter_test_app/controller/counter_controller.dart';

class HomePageGetx extends StatelessWidget {
  const HomePageGetx({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            icon: Icons.add,
            onPressed: () {
              counterController.increment();
            },
          ),
          const SizedBox(
            width: 30,
          ),
          ButtonControl(
            icon: Icons.remove,
            onPressed: () {
              counterController.decrement();
            },
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.clear();
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: Obx(
        () => Center(
          child: Text(
            counterController.result.value.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
