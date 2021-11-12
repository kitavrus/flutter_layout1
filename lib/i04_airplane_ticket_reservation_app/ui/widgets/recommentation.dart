import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/recommendation_item.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recommended for you',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              RecommendationItem(
                title: 'nome',
                price: '\$ 888',
                color: Color(0xFFFfe8db9),
              ),
              RecommendationItem(
                title: 'nome',
                price: '\$ 999',
                color: Color(0xFFF00ccff),
              ),
              RecommendationItem(
                title: 'nome',
                price: '\$ 2450',
                color: Color(0xFFFffdb83),
              ),
              RecommendationItem(
                title: 'nome',
                price: '\$ 99',
                color: Color(0xFFFaebddd0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
