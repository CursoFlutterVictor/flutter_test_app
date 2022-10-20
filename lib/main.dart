import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/home_page_getx.dart';
//import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageGetx(),
      //home: const HomePage(),
    );
  }
}
