import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/theme/theme_app.dart';

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
                        Tab(
                          text: 'Профиль',
                        ),
                        Tab(
                          text: 'Настройки',
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      const YouHaveSubscriptions(),
                      Container(
                        color: Color(ThemeApp.backgroundColor),
                        alignment: Alignment.topLeft,
                        child: Text('Настройки'),
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

class YouHaveSubscriptions extends StatelessWidget {
  const YouHaveSubscriptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(ThemeApp.backgroundColor),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'У вас подключено',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Подписки, автоплатежи и сервисы на которые вы подписались',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _item(),
                _item(),
                _item(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _item() {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: Container(
      width: 216,
      height: 130,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.flag,
                  color: Color(ThemeApp.iconColor),
                  size: 24,
                ),
              ),
              SizedBox(width: 12),
              Text(
                'СберПрайм',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          // const SizedBox(height: 32),
          const Spacer(),
          Row(
            children: const [
              Text(
                'Платёж 9 июля',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Text(
                '199 ₽ в месяц',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.55),
                  // fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

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
