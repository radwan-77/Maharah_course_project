

import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 62,
        ),
        Center(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(120),
            child: Image.asset(
              "assets/images/profile_image.webp",
              width: 140,
              height: 140,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Ahmed Ashour",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Programer",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
