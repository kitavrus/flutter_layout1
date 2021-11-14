import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/tariffs_and_limits_item.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TariffAndLimitsItem(
          title: 'Изменить суточный лимит',
          subtitle: 'На платежи и переводы',
          pathToImage: 'assets/user_profile/icons/percent_outlined.png',
          onTab: () {},
        ),
        const SizedBox(height: 12),
        TariffAndLimitsItem(
          title: 'Изменить суточный лимит',
          subtitle: 'На платежи и переводы',
          pathToImage: 'assets/user_profile/icons/percent_outlined.png',
          onTab: () {},
        ),
        const SizedBox(height: 12),
        TariffAndLimitsItem(
          title: 'Изменить суточный лимит',
          subtitle: 'На платежи и переводы',
          pathToImage: 'assets/user_profile/icons/percent_outlined.png',
          onTab: () {},
        ),
      ],
    );
  }
}
