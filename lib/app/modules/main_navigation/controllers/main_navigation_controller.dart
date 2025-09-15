import 'package:get/get.dart';

class MainNavigationController extends GetxController{
  // Index tab active
  var currentIndex = 0.obs;

  void changePage(int index){
    currentIndex.value = index;
  }
}