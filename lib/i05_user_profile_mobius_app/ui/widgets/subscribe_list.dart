import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/subscribe_item.dart';
import 'package:flutter_svg/svg.dart';

import 'flag_icon.dart';

class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SubscribeItem(
            title: 'СберПрайм',
            description: 'Платёж 9 июля',
            costPerMonth: '199 ₽ в месяц',
            titleIcon: FlagIcon(),
          ),
          SubscribeItem(
            title: 'Переводы',
            description: 'Автопродление 21 августа',
            costPerMonth: '99 ₽ в месяц',
            titleIcon: SvgPicture.asset(
              'assets/user_profile/icons/percent.svg',
              height: 35,
              width: 35,
            ),
          ),
          SubscribeItem(
            title: 'СберПрайм',
            description: 'Платёж 9 июля',
            costPerMonth: '199 ₽ в месяц',
            titleIcon: Image.asset(
              'assets/user_profile/icons/flag_pic.png',
              height: 26,
              width: 26,
            ),
          ),
        ],
      ),
    );
  }
}
