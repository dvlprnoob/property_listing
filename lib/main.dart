import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Real Estate Listing',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.main,
      getPages: AppPages.routes,
    );
  }
}
