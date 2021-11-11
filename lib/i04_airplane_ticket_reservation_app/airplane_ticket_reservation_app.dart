import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/airplane_ticket_reservation_home_page.dart';

class AirplaneTicketReservationApp extends StatelessWidget {
  const AirplaneTicketReservationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AirplaneTicketReservationHomePage(),
    );
  }
}
