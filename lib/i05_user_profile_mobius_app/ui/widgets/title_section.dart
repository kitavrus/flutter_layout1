import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String? subTitle;

  const TitleSection({
    required this.title,
    this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 8),
        if (subTitle != null && subTitle!.isNotEmpty) ...[
          Text(
            subTitle!,
            style: TextStyle(
                color: Colors.black.withOpacity(0.55),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
          const SizedBox(height: 20),
        ] else ...[
          const SizedBox.shrink()
        ],
      ],
    );
  }
}
