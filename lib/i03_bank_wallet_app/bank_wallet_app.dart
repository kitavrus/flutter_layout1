import 'package:flutter/material.dart';
import 'package:flutter_layout1/i03_bank_wallet_app/ui/bank_wallet_home_page.dart';

class BankWalletApp extends StatelessWidget {
  const BankWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BankWalletHomePage(),
    );
  }
}
