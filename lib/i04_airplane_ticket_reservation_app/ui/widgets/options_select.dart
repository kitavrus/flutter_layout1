import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/passengers_btn.dart';

class OptionsSelect extends StatelessWidget {
  const OptionsSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              PassengersBtn(
                onTap: () {},
                title: 'Departure',
                label: '22 Oct, 2021',
                color: const Color(0xFFFFeb578),
                icon: Icons.today,
              ),
              PassengersBtn(
                onTap: () {},
                title: 'Return',
                label: '22 Nov, 2021',
                color: const Color(0xFFFF00d5d8),
                icon: Icons.today,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              PassengersBtn(
                onTap: () {},
                title: 'Departure',
                label: '2 Adult',
                color: const Color(0xFFFFe8db9),
                icon: Icons.wc,
              ),
              PassengersBtn(
                onTap: () {},
                title: 'Class',
                label: 'Economy',
                color: const Color(0xFFFF7d59ee),
                icon: Icons.today,
              ),
            ],
          ),
        ],
      );
}
