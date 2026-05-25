import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'services/dio_service_api.dart';
import 'model/product_model.dart';
import 'widget/section_header.dart';
import 'widget/product_grid.dart';

class FeaturedProductsScreen extends StatefulWidget {
  // ← change to StatefulWidget
  const FeaturedProductsScreen({super.key});

  @override
  State<FeaturedProductsScreen> createState() => _FeaturedProductsScreenState();
}

class _FeaturedProductsScreenState extends State<FeaturedProductsScreen> {
  List<Product> products = [];
  bool isLoading = false;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchProducts(); // ← auto fetch when screen opens
  }

  Future<void> fetchProducts() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
      products = [];
    });

    try {
      final response = await DioClient.dio.get('/products/category/mens-shoes');
      final List data =
          response.data['products']; // ← dummyjson wraps in 'products'
      setState(() {
        products = data.map((e) => Product.fromJson(e)).toList();
        log('Fetched $products products');
      });
    } on DioException catch (e) {
      setState(() => errorMessage = e.message ?? 'Something went wrong');
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(errorMessage),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: fetchProducts,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            )
          : RefreshIndicator(
              onRefresh: fetchProducts,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const SectionHeader(
                          title: 'My recommended products',
                          subtitle: 'View what is currently popular',
                        ),
                        const SizedBox(height: 24),
                        ProductGrid(products: products), // ← now uses API data
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
