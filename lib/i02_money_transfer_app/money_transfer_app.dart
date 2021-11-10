import 'package:flutter/material.dart';
import 'package:flutter_layout1/i02_money_transfer_app/ui/money_transfer_home_page.dart';
import 'package:get/get.dart';

class MoneyTransferApp extends StatelessWidget {
  const MoneyTransferApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoneyTransferHomePage(),
    );
  }
}
