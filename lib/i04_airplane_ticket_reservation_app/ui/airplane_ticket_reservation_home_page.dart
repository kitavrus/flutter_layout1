import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/destination_box.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/options.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/options_select.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/recommentation.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/select_way.dart';

class AirplaneTicketReservationHomePage extends StatelessWidget {
  const AirplaneTicketReservationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFf6f5fb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.red,
            margin: const EdgeInsets.only(
              left: 30,
              top: 40,
              bottom: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Options(),
                SizedBox(height: 22),
                DestinationBox(),
                SizedBox(height: 22),
                SelectWay(),
                SizedBox(height: 25),
                OptionsSelect(),
                SizedBox(height: 16),
                Recommendation(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
