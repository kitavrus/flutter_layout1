import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/options_btn.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          OptionsBtn(
            onTap: () {},
            label: 'Flights',
            color: const Color(0xffff89380),
          ),
          OptionsBtn(
            onTap: () {},
            label: 'Train',
            color: const Color(0xfff9b9ba0),
          ),
          OptionsBtn(
            onTap: () {},
            label: 'Bus',
            color: const Color(0xfff9b9ba0),
          ),
          OptionsBtn(
            onTap: () {},
            label: 'Hotel',
            color: const Color(0xfff9b9ba0),
          ),
        ],
      ),
    );
  }
}
