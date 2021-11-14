import 'package:flutter/material.dart';

class FlagIcon extends StatelessWidget {
  const FlagIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/user_profile/icons/flag_pic.png',
          height: 24,
          width: 24,
        ),
      );
}
