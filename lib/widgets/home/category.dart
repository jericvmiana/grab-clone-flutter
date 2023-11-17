import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData iconData;

  const Category({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(iconData),
          ),
        ),
        const SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}
