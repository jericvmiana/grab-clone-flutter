import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/widgets/home/ad_card.dart';

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    const children = [
      AdCard(
        title: "Watch Live Games",
        assetName: 'assets/nba.jpg',
        description: "Get your Free P850 from Jordan Clarkson",
        ad: "ArenaPlus: NBA-PBA Sports Bet",
      ),
      AdCard(
        title: "Order Now",
        assetName: 'assets/burgershop.jpg',
        description: "Get festive with our hamburger",
        ad: "ArenaPlus: NBA-PBA Sports Bet",
      ),
      AdCard(
        title: "Play Now",
        assetName: 'assets/carousel.jpg',
        description: "Spin & Win With Color Game's Lucky Wheel",
        ad: "Casino Plus, PAGCOR Licensed",
      ),
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (_, index) {
          return children[index];
        },
      ),
    );
  }
}
