import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/theme/theme_app.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 58,
        left: 20,
        right: 20,
        bottom: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.close,
            color: Color(ThemeApp.iconColor),
            size: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/photo.png',
                  width: 110,
                  height: 110,
                ),
                const Text(
                  'Екатерина',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          ),
          const Icon(
            Icons.exit_to_app,
            color: Color(ThemeApp.iconColor),
            size: 25,
          ),
        ],
      ),
    );
  }
}
