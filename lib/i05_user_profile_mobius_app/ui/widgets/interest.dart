import 'package:flutter/material.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = <String>[
      'Еда',
      'Саморазвитие',
      'Технологии',
      'Дом',
      'Досуг',
      'Забота о себе',
      'Наука',
    ];
    // final List<Widget> =
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _items.map((label) => InterestItem(label)).toList(),
    );
  }
}

class InterestItem extends StatelessWidget {
  final String label;
  const InterestItem(
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
