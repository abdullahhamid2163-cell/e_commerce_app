import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppCartCounterIcon extends StatelessWidget {
  const AppCartCounterIcon({super.key, this.color, required this.onTap});

  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            Iconsax.shopping_bag,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
