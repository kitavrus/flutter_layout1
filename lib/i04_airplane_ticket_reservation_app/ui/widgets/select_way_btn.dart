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
          child: Row(
            children: [
              const SizedBox(width: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  //   borderRadius: BorderRadius.circular(14)
                ),
                child: Icon(icon, color: Colors.white, size: 18),
              ),
              Container(
                alignment: Alignment.center,
                width: 90,
                child: Text(
                  label,
                  style: TextStyle(
                    color: color,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ), // TODO аналог обернуть с Center
        ),
      ),
    );
  }
}
