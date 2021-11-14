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
    return SizedBox(
      height: 55,
      // width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pathToImage,
            width: 36,
            height: 40,
            // fit: BoxFit.fill,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.5, color: Colors.grey),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  if (subtitle.isNotEmpty) ...[
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.55),
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
          // Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: 25),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.5, color: Colors.grey),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black.withOpacity(0.30),
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
