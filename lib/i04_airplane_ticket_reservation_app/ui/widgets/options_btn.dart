import 'package:flutter/material.dart';

class OptionsBtn extends StatelessWidget {
  final GestureTapCallback onTap;
  final String label;
  final Color color;

  const OptionsBtn({
    required this.onTap,
    required this.label,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(14);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        highlightColor: Colors.transparent,
        child: Container(
          height: 40,
          width: 100,
          // margin: const EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            borderRadius: borderRadius,
          ),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
