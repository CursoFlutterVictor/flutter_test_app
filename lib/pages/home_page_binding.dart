import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/controller/counter_controller.dart';
import 'package:flutter_test_app/widgets/button_control.dart';

class HomePageBinding extends StatelessWidget {
  const HomePageBinding({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController cc = Get.find();
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            icon: Icons.add,
            onPressed: () {
              cc.increment();
            },
            heroTag: "Boton+",
          ),
          const SizedBox(
            width: 30,
          ),
          ButtonControl(
            icon: Icons.remove,
            onPressed: () {
              cc.decrement();
            },
            heroTag: "Boton-",
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            heroTag: "botonAC",
            onPressed: () {
              cc.clear();
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          ButtonControl(
              icon: Icons.arrow_right,
              onPressed: () {
                //Get.toNamed("/PAGE2");
                //Get.offNamed("/PAGE2");
                Get.toNamed("/PAGE2");
              },
              heroTag: "BotonRight")
        ],
      ),
      body: Obx(
        () => Center(
          child: Text(
            cc.result.value.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
