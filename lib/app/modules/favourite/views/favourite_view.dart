import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/controllers/home_controller.dart';

class FavouriteView extends GetView<HomeController> {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(title: Text("Favourites", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),), backgroundColor: Colors.brown.shade100,),
      body: Obx(() {
        if (controller.favourites.isEmpty) {
          return const Center(child: Text("Belum ada favourite"));
        }

        return ListView.builder(
          itemCount: controller.favourites.length,
          itemBuilder: (context, index) {
            final property = controller.favourites[index];
            return ListTile(
              leading: Image.network(property.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(property.title),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle, color: Colors.red),
                onPressed: () => controller.toggleFavourite(property),
              ),
            );
          },
        );
      }),
    );
  }
}

