import 'package:flutter/material.dart';
import 'package:flutter_test_app/routes/app_pages.dart';
import 'package:flutter_test_app/routes/app_routes.dart';
import 'package:get/get.dart';
//import 'pages/home_page.dart';
//import 'package:flutter_test_app/pages/home_page_getx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
      //home: const HomePageGetx(),
      initialRoute: AppPaths.HOME,
      getPages: AppPages.routes,
    );
  }
}
