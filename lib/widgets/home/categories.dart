import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/widgets/home/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Category(
          title: "Car",
          iconData: Icons.wallet,
        ),
        Category(
          title: "Try Move It",
          iconData: Icons.motorcycle_outlined,
        ),
        Category(
          title: "Food",
          iconData: Icons.egg,
        ),
        Category(
          title: "Mart",
          iconData: Icons.store,
        ),
        Category(
          title: "All",
          iconData: Icons.dashboard,
        ),
      ],
    );
  }
}
