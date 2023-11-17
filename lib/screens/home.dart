import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/widgets/home/ads.dart';
import 'package:grab_clone_flutter/widgets/home/categories.dart';
import 'package:grab_clone_flutter/widgets/home/header.dart';
import 'package:grab_clone_flutter/widgets/home/quick_view.dart';
import 'package:grab_clone_flutter/widgets/home/section_title.dart';
import 'package:grab_clone_flutter/widgets/home/suggested_food.dart';
import 'package:grab_clone_flutter/widgets/home/suggested_restaurant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Header(),
        Categories(),
        QuickView(),
        Ads(),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: SectionTitle(title: "Food for you"),
        ),
        SuggestedFood(),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: SectionTitle(title: "Order lunch from"),
        ),
        SuggestedRestaurant(),
      ],
    );
  }
}
