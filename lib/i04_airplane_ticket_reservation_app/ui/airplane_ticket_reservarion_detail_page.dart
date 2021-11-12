import 'package:flutter/material.dart';

class AirplaneTicketReservationDetailPage extends StatelessWidget {
  const AirplaneTicketReservationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFf6f5fb),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFf6f5fb),
        foregroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('DETAIL PAGE', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
