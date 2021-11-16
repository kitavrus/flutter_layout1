import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BoxizHomePage extends StatelessWidget {
  const BoxizHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 12,
                      ),
                      Icon(Icons.comment_bank_outlined),
                      Text('128'),
                      Icon(Icons.vpn_key),
                      Text('128'),
                      Icon(Icons.shield),
                      Text('3'),
                      Badge(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                flex: 2),
            const Expanded(child: Placeholder(), flex: 20),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.home),
                          iconSize: 28),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.radio_button_checked),
                          iconSize: 28),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shield),
                          iconSize: 28),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.waterfall_chart),
                          iconSize: 28),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.confirmation_num_outlined),
                          iconSize: 28),
                    ],
                  ),
                ),
                flex: 2),
          ],
        ),
      ),
    );
  }
}
