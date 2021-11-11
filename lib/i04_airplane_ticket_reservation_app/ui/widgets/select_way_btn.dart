import 'package:flutter/material.dart';

class SelectWayBtn extends StatelessWidget {
  final GestureTapCallback onTap;
  final String label;
  final Color color;
  final IconData icon;

  const SelectWayBtn({
    required this.onTap,
    required this.label,
    required this.color,
    required this.icon,
    Key? key,
  }) : super(key: key);
  // TODO Как задать форму для сплеша
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(25);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        // splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        // customBorder: const StadiumBorder(),
        child: Container(
          // margin: const EdgeInsets.only(right: 10), // TODO Если указать вышалить splash,Делать через паддинги
          alignment: Alignment.center, // TODO аналог обернуть с Center
          width: 160,
          height: 50,
          decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: borderRadius,
          ),
          child: Text(label), // TODO аналог обернуть с Center
        ),
      ),
    );
  }
}
