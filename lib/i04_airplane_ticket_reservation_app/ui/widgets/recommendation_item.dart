import 'package:flutter/material.dart';
import 'package:flutter_layout1/i04_airplane_ticket_reservation_app/ui/airplane_ticket_reservarion_detail_page.dart';
import 'package:intl/intl.dart';

class RecommendationItem extends StatelessWidget {
  final String title;
  final String price;
  final Color color;

  const RecommendationItem({
    required this.title,
    required this.price,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AirplaneTicketReservationDetailPage(),
          ),
        );
      },
      child: Container(
        height: 180,
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _icon(color),
            const SizedBox(height: 10),
            Text(
              // '22 November 2021',
              DateFormat('d MMMM y').format(DateTime.now()).toString(),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            _destination(),
            const SizedBox(height: 10),
            _price(price),
          ],
        ),
      ),
    );
  }
}

Widget _price(String price) => Row(
      children: [
        Text(
          price,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(width: 20),
        const Icon(
          Icons.trending_flat,
          size: 22,
          color: Colors.white,
        ),
      ],
    );

Widget _destination() => Row(
      children: const [
        Text(
          'SFO',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(width: 10),
        Icon(Icons.swap_horiz, size: 32, color: Colors.white),
        SizedBox(width: 10),
        Text(
          'OSL',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );

Widget _icon(Color color) => Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.flight_takeoff,
        color: color,
        size: 32,
      ),
    );
