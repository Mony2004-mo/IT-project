import 'package:flutter/material.dart';
import 'controller/home_controller.dart';
import 'widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'My Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: HomeController.menuItems.length,
          itemBuilder: (context, index) {
            final label = HomeController.menuItems[index];
            return MenuButton(
              label: label,
              isFilled: index == 0,
              onTap: () => HomeController.onMenuTap(context, label),
            );
          },
        ),
      ),
    );
  }
}
