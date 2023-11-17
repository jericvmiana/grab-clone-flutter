import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/models/food.dart';
import 'package:grab_clone_flutter/widgets/home/food_card.dart';

class SuggestedFood extends StatelessWidget {
  const SuggestedFood({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = [
      Food(
        image: 'assets/chicken.jpg',
        title: '1-pc. Chicken McDo',
        description: 'McDonald\'s - New Port City',
        price: 99,
      ),
      Food(
        image: 'assets/chicken2.jpg',
        title: '1-pc. Chicken Joy Solo',
        description: 'Jollibee - Kalinisan',
        price: 99,
      ),
      Food(
        image: 'assets/friedrice.jpg',
        title: 'Chinese-Style Fried Rice',
        description: 'Chowking - Kalinisan Bacoor',
        price: 99,
      ),
      Food(
        image: 'assets/cake.jpg',
        title: 'Black Forest Regular',
        description: 'Red Ribbon - Diego Cera',
        price: 99,
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (_, index) => FoodCard(food: foods[index]),
      ),
    );
  }
}
