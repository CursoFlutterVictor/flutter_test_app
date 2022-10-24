import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/page_2.dart';
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
            heroTag: "Boton+",
          ),
          const SizedBox(
            width: 30,
          ),
          ButtonControl(
            icon: Icons.remove,
            onPressed: () {
              counterController.decrement();
            },
            heroTag: "Boton-",
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            heroTag: "botonAC",
            onPressed: () {
              counterController.clear();
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonControl(
              icon: Icons.arrow_right,
              onPressed: () {
                Get.to(() => const Page2());
                //Get.off(() => const Page2());
              },
              heroTag: "BotonRight")
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
