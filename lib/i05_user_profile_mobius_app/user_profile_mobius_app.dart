import 'package:flutter/material.dart';
import 'package:flutter_layout1/i05_user_profile_mobius_app/ui/user_profile_page.dart';

class UserProfileMobiusApp extends StatelessWidget {
  const UserProfileMobiusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}
