import 'package:flutter/material.dart';

class PassengersBtn extends StatelessWidget {
  final GestureTapCallback onTap;
  final String label;
  final String title;
  final Color color;
  final IconData icon;

  const PassengersBtn({
    required this.onTap,
    required this.label,
    required this.title,
    required this.color,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderRadius = BorderRadius.circular(10);
    // TODO Не появлялся splash эфект, он был какбы под кнопкой
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFFa9a9ba),
            ),
          ),
          const SizedBox(height: 4),
          Stack(
            children: [
              Details(
                  borderRadius: _borderRadius,
                  color: color,
                  icon: icon,
                  label: label),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: _borderRadius,
                    highlightColor: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required BorderRadius borderRadius,
    required this.color,
    required this.icon,
    required this.label,
  })  : _borderRadius = borderRadius,
        super(key: key);

  final BorderRadius _borderRadius;
  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        color: Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
          ),
          const SizedBox(width: 5),
          Container(
            alignment: Alignment.center,
            width: 100,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
