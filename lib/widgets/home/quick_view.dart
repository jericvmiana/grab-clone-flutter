import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/widgets/home/balance.dart';

class QuickView extends StatelessWidget {
  const QuickView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Balance(
            title: "Balance",
            subTitle: "P45.00",
            iconData: Icons.wallet,
            showIcon: true,
          ),
          Balance(
            title: "Ride to",
            subTitle: "Las Piñas",
            iconData: Icons.car_rental,
            showIcon: true,
          ),
          Balance(
            title: "Points",
            subTitle: "437",
            iconData: Icons.car_rental,
            showIcon: false,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
