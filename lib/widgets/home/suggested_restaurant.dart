import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/models/restaurant.dart';
import 'package:grab_clone_flutter/widgets/home/restaurant_card.dart';

class SuggestedRestaurant extends StatelessWidget {
  const SuggestedRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = [
      Restaurant(
        name: "Shakey's Pizza - So",
        image: "assets/pizza.jpg",
        description: "2.5km ⭐️4.5",
        discount: "40% Off on Pizzas",
      ),
      Restaurant(
        name: "Jollibee - Zapote",
        image: "assets/dimsum.jpg",
        description: "1.5km ⭐️4.5",
        discount: "Php1000 off min spend Ph650",
      ),
      Restaurant(
        name: "Mang Inasal - Las Piñas",
        image: "assets/barbecue.jpg",
        description: "2.6km ⭐️4.5",
        discount: "Paa Large Family Size + Palabok",
      ),
      Restaurant(
        name: "KFC - Starmall Las Piñas",
        image: "assets/kfc.jpg",
        description: "3.2km ⭐️4.2",
        discount: "",
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (_, index) =>
            RestaurantCard(restaurant: restaurants[index]),
      ),
    );
  }
}
