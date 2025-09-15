import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../favourite/views/favourite_view.dart';
import '../../chat/views/chat_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/main_navigation_controller.dart';

class MainNavigationView extends GetView<MainNavigationController> {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    // controller sudah tersedia lewat GetView, jadi tidak perlu Get.put() di sini
    final List<Widget> pages = const [
      HomeView(),
      FavouriteView(),
      ChatView(),
      ProfileView(),
    ];

    return Obx(
          () => Scaffold(
        body: pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage, // wajib untuk navigasi
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.brown.shade100,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
