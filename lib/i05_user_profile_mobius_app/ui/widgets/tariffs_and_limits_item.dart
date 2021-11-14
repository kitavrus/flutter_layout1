import 'package:flutter/material.dart';

class TariffAndLimitsItem extends StatelessWidget {
  final String pathToImage;
  final String title;
  final String subtitle;
  final Function onTab;

  const TariffAndLimitsItem({
    required this.pathToImage,
    required this.title,
    required this.subtitle,
    required this.onTab,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image.asset(pathToImage, width: 36, height: 40),
        // const SizedBox(width: 12),
        Container(
          color: Colors.red,
          height: 1,
          width: 100,
        ),
        // Column(
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     // Text(
        //     //   title,
        //     //   style: const TextStyle(
        //     //     fontSize: 16,
        //     //     fontWeight: FontWeight.w500,
        //     //     color: Colors.black,
        //     //   ),
        //     // ),
        //     // Text(
        //     //   subtitle,
        //     //   style: TextStyle(
        //     //     fontSize: 16,
        //     //     fontWeight: FontWeight.w500,
        //     //     color: Colors.black.withOpacity(0.55),
        //     //   ),
        //     // ),
        //     Container(
        //       color: Colors.black.withOpacity(0.55),
        //       height: 10,
        //     )
        //   ],
        // ),
        // Spacer(),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Icon(
        //       Icons.arrow_forward_ios_sharp,
        //       color: Colors.black.withOpacity(0.30),
        //       size: 20,
        //     ),
        //     Divider(
        //       color: Colors.black.withOpacity(0.55),
        //
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
