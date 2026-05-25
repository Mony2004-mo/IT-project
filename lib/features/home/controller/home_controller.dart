import 'package:flutter/material.dart';
import '../../../product_screen.dart';

class HomeController {
  static List<String> menuItems = ['API test'];

  static void onMenuTap(BuildContext context, String label) {
    switch (label) {
      case 'API test':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FeaturedProductsScreen()),
        );
        break;
      default:
        break;
    }
  }
}
