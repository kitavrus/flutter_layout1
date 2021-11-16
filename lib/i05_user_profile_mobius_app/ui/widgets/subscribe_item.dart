import 'package:flutter/material.dart';

class SubscribeItem extends StatelessWidget {
  final Widget titleIcon;
  final String title;
  final String description;
  final String costPerMonth;

  const SubscribeItem({
    required this.titleIcon,
    required this.title,
    required this.description,
    required this.costPerMonth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        // TODO change to Card?
        width: 216,
        height: 130,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                titleIcon,
                const SizedBox(width: 12),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Text(
                  costPerMonth,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.55),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
