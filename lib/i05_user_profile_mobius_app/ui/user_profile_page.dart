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
            Padding(
              padding: const EdgeInsets.only(
                top: 58,
                left: 20,
                right: 20,
                bottom: 32,
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
            ),
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
                      Container(
                        color: Color(ThemeApp.backgroundColor),
                        alignment: Alignment.center,
                        child: Text('Профиль'),
                      ),
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
