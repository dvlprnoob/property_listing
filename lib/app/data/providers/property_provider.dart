import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/property_models.dart';

class PropertyProvider {
  Future<List<Property>> fetchProperties() async {
    // Baca data dari assets JSON(Bisa diganti dengan menggunakan API Flask / Backend)
    final response = await rootBundle.loadString('assets/data/properties.json');
    final List<dynamic> data = jsonDecode(response);

    return data.map((json) => Property.fromJson(json)).toList();
  }
}
