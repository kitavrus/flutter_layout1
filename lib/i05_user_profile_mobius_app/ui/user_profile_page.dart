import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/theme/theme_app.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/subscribe_list.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/tariffs_and_limits.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/title_section.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/widgets/top_section.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const TopSection(),
            Expanded(
              child: DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 10,
                    elevation: 1,
                    backgroundColor: Colors.white,
                    // foregroundColor: Colors.black,
                    bottom: const TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Color(ThemeApp.tabIndicatorColor),
                      tabs: [
                        Tab(text: 'Профиль'),
                        Tab(text: 'Настройки'),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      const ProfileTab(),
                      Container(
                        color: const Color(ThemeApp.backgroundColor),
                        alignment: Alignment.center,
                        child: const Text('Настройки'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(ThemeApp.backgroundColor),
        padding: const EdgeInsets.all(16.0),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleSection(
              title: 'У вас подключено',
              subTitle:
                  'Подписки, автоплатежи и сервисы на которые вы подписались',
            ),
            SubscribeList(),
            SizedBox(height: 46),
            TitleSection(
              title: 'Тарифы и лимиты',
              subTitle: 'Для операций в Сбербанк Онлайн',
            ),
            TariffsAndLimits(),
            SizedBox(height: 35),
            TitleSection(
              title: 'Интересы',
              subTitle:
                  'Мы подбираем истории и предложения по темам, которые вам нравятся',
            ),
          ],
        ),
      ),
    );
  }
}
