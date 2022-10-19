import 'package:flutter/material.dart';
import 'package:flutter_test_app/utils/counter.dart';

final Counter c = Counter();

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            c.value++;
            print(c.value.toString());
          });
        },
      ),
      body: Center(
          child: Text(
        c.value.toString(),
        style: const TextStyle(fontSize: 30),
      )),
    );
  }
}
