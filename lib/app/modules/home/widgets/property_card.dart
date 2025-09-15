import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/property_models.dart';
import '../controllers/home_controller.dart';

class PropertyCard extends StatelessWidget {
  final Property property;
  final HomeController controller;

  const PropertyCard({
    super.key,
    required this.property,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.network(
                  property.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(property.title),
              ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Obx(() {
              final isFav = controller.favourites.contains(property);
              return GestureDetector(
                onTap: () => controller.toggleFavourite(property),
                child: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
