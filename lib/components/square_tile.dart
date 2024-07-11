import 'package:flutter/material.dart';

class SquareTIle extends StatelessWidget {
  final String imagePath;
  const SquareTIle({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[100],
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
