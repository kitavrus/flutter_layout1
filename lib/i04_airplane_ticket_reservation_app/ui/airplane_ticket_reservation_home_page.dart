import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/destination_box.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/widgets/options.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
