
  import 'package:flutter/material.dart';

Widget buildIconColumn(
    BuildContext context,
    String assetPath,
    String label,
    double radius,
    double fontSize,
    VoidCallback onTap,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 60, 2, 195),
            radius: radius,
            backgroundImage: AssetImage(assetPath),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 90),
          child: Text(
            label,
            style: TextStyle(fontSize: fontSize, color: Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }