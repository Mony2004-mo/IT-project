import 'package:flutter/material.dart';
import 'data/product_data.dart';
import 'widget/section_header.dart';
import 'widget/product_grid.dart';

class FeaturedProductsScreen extends StatelessWidget {
  const FeaturedProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400), // จำกัดความกว้าง
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SectionHeader(
                  title: 'My recommended products',
                  subtitle: 'View what is currently popular',
                ),
                const SizedBox(height: 24),
                ProductGrid(products: productsData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
