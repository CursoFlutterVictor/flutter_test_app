import 'package:get/get.dart';
import 'package:flutter_test_app/bindings/counter_binding.dart';
import 'package:flutter_test_app/pages/home_page_binding.dart';
import 'package:flutter_test_app/pages/page_2.dart';
import 'package:flutter_test_app/pages/page_3.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomePageBinding(),
        binding: CounterBinding()),
    // Si tiene el binding en PAGE_2, se inicializa de nuevo
    //GetPage(name: AppRoutes.PAGE_2, page: () => const Page2()),
    GetPage(
        name: AppRoutes.PAGE_2,
        page: () => const Page2(),
        binding: CounterBinding()),
    GetPage(
        name: AppRoutes.PAGE_3,
        page: () => const Page3(),
        binding: CounterBinding())
  ];
}
