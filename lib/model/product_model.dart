import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final Color cardColor;
  final String imageUrl;

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.cardColor,
    required this.imageUrl,
  });
}
