import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final bool showIcon;

  const Balance({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconData,
    required this.showIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(title),
                Row(
                  children: [
                    Text(subTitle),
                    const Spacer(),
                    Visibility(
                      visible: showIcon,
                      child: Icon(
                        iconData,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
