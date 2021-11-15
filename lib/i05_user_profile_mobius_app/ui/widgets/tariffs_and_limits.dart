import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/tariffs_and_limits_item.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariffAndLimitsItem(
          title: 'Изменить суточный лимит',
          subtitle: 'На платежи и переводы',
          pathToImage: 'assets/images/user_profile/ic_36_speedometer.png',
          onTab: () {},
        ),
        const SizedBox(height: 12),
        TariffAndLimitsItem(
          title: 'Переводы без комиссии',
          subtitle: 'Показать остаток в этом месяце',
          pathToImage: 'assets/images/user_profile/percent_outlined.png',
          onTab: () {},
        ),
        const SizedBox(height: 12),
        TariffAndLimitsItem(
          title: 'Информация о тарифах \n и лимитах',
          subtitle: '',
          pathToImage: 'assets/images/user_profile/arrows_forward_back.png',
          onTab: () {},
        ),
      ],
    );
  }
}
