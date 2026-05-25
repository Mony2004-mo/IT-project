import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final bool isFilled;
  final VoidCallback onTap;

  const MenuButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.indigo,
          elevation: 0,
          side: BorderSide(
            color: isFilled ? Colors.indigo : Colors.grey.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          alignment: Alignment.centerLeft,
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(label, style: const TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}
