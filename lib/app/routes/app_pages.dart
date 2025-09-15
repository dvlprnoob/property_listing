import 'package:get/get.dart';
import 'package:real_estate_listing/app/modules/main_navigation/controllers/main_navigation_controller.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main_navigation/views/main_navigation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.main; // bisa ganti '/' jika mau langsung home

  static final routes = [
    // MainNavigationView sebagai entry point dengan BottomNavigationBar
    GetPage(
      name: Routes.main,
      page: () => const MainNavigationView(),
      binding: BindingsBuilder((){
        Get.put(MainNavigationController());
      })
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => DetailView(),
    ),
    // nanti bisa tambah favourite, chat, profile route juga
  ];
}

