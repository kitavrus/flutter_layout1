import 'package:flutter/material.dart';

class BankWalletHomePage extends StatelessWidget {
  const BankWalletHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 30, top: 40, bottom: 60),
          ),
        ),
      ),
    );
  }
}
