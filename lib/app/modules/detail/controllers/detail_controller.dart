import 'package:get/get.dart';
import '../../../data/models/property_models.dart';

class DetailController extends GetxController{
  late Property property;

  @override
  void onInit() {
    super.onInit();
    property = Get.arguments as Property;
  }
}