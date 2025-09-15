import 'package:get/get.dart';
import '../../../data/models/property_models.dart';
import '../../../data/providers/property_provider.dart';

class HomeController extends GetxController {
  var properties = <Property>[].obs;
  var isLoading = false.obs;
  var searchQuery = ''.obs;
  var favourites = <Property>[].obs;

  final PropertyProvider _provider = PropertyProvider();

  @override
  void onInit() {
    super.onInit();
    fetchProperties();
  }

  Future<void> fetchProperties() async {
    try {
      isLoading.value = true;
      properties.value = await _provider.fetchProperties();
    } finally {
      isLoading.value = false;
    }
  }

  /// Toggle favourite
  void toggleFavourite(Property property) {
    if (favourites.contains(property)) {
      favourites.remove(property);
    } else {
      favourites.add(property);
    }
  }

  /// Daftar properties yang sudah di-filter sesuai search
  List<Property> get filteredProperties {
    if (searchQuery.value.isEmpty) return properties;
    return properties
        .where((p) =>
        p.title.toLowerCase().contains(searchQuery.value.toLowerCase()))
        .toList();
  }
}
