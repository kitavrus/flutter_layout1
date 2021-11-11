import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/select_way_btn.dart';

class SelectWay extends StatelessWidget {
  const SelectWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select The way',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SelectWayBtn(
                onTap: () {},
                label: 'ROUND TRIP',
                color: const Color(0xFFF00d5d8),
                icon: Icons.swap_horiz,
              ),
              SelectWayBtn(
                onTap: () {},
                label: 'ONE WAY',
                color: const Color(0xFFFababbc),
                icon: Icons.trending_flat,
              ),
            ],
          )
        ],
      ),
    );
  }
}
