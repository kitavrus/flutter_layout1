import 'dart:math' as math;
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_layout1/i03_bank_wallet_app/bloc/bottom_tab_bar_cubit.dart';

// class BankWalletHomePage extends StatefulWidget {
//   const BankWalletHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<BankWalletHomePage> createState() => _BankWalletHomePageState();
// }
//
// class _BankWalletHomePageState extends State<BankWalletHomePage> {
//   // int bottomNavIndex = 0;

class BankWalletHomePage extends StatelessWidget {
  const BankWalletHomePage({Key? key}) : super(key: key);

  Color _selectedTabIconColor(int currentIndex, int tabIndex) =>
      currentIndex == tabIndex ? Colors.deepPurpleAccent : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BankTabCubit, int>(
        builder: (context, bottomNavIndex) => IndexedStack(
          index: bottomNavIndex,
          children: [
            Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              alignment: Alignment.center,
              child: Text('home'),
            ),
            Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              alignment: Alignment.center,
              child: const Text('account_balance_wallet'),
            ),
            const StatisticPage(),
            Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              child: Text('description'),
              alignment: Alignment.center,
            ),
            Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              child: Text('settings'),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BlocBuilder<BankTabCubit, int>(
          builder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  color: _selectedTabIconColor(index, 0),
                  onPressed: () => context.read<BankTabCubit>().setTab(0),
                  icon: const Icon(Icons.home)),
              IconButton(
                  color: _selectedTabIconColor(index, 1),
                  onPressed: () => context.read<BankTabCubit>().setTab(1),
                  icon: const Icon(Icons.account_balance_wallet)),
              IconButton(
                  color: _selectedTabIconColor(index, 2),
                  onPressed: () => context.read<BankTabCubit>().setTab(2),
                  icon: const Icon(Icons.pie_chart)),
              IconButton(
                  color: _selectedTabIconColor(index, 3),
                  onPressed: () => context.read<BankTabCubit>().setTab(3),
                  icon: const Icon(Icons.description)),
              IconButton(
                  color: _selectedTabIconColor(index, 4),
                  onPressed: () => context.read<BankTabCubit>().setTab(4),
                  icon: const Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}

class StatisticPage extends StatelessWidget {
  const StatisticPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text('Statistic',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LineChart(
                    LineChartData(
                      maxY: 1200,
                      minY: 0,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      gridData: FlGridData(
                        show: false,
                      ),
                      axisTitleData: FlAxisTitleData(show: false),
                      titlesData: FlTitlesData(
                        topTitles: SideTitles(
                          showTitles: false,
                        ),
                        rightTitles: SideTitles(
                          showTitles: false,
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          interval: 250,
                          getTextStyles: (context, value) {
                            return const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            );
                          },
                        ),
                        bottomTitles: SideTitles(
                          showTitles: true,
                          interval: 5,
                          getTextStyles: (context, value) {
                            return const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          colors: [Colors.purple],
                          dotData: FlDotData(show: false),
                          isCurved: true,
                          spots: List.generate(
                            40,
                            (index) => FlSpot(index.toDouble(),
                                250 + Random().nextDouble() * 500),
                          ),
                        ),
                        LineChartBarData(
                          colors: [Colors.deepOrange],
                          dotData: FlDotData(show: false),
                          isCurved: true,
                          spots: List.generate(
                            40,
                            (index) => FlSpot(index.toDouble(),
                                500 + Random().nextDouble() * 500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_drop_up, color: Colors.deepPurple),
              Text(
                'Receive Money',
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.arrow_drop_down, color: Colors.deepOrange),
              Text(
                'Receive Money',
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Container(
            height: 64,
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                FilterButton(label: 'October 21', color: Colors.deepPurple),
                FilterButton(label: 'All', color: Colors.deepOrange),
                FilterButton(label: '5 day', color: Colors.green),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  return CardItemMy();
                },
                itemCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItemMy extends StatelessWidget {
  const CardItemMy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(radius: 24),
                Icon(Icons.apps, size: 12),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Monthly Salary',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: const TextSpan(
                      text: '\$9995',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: '.10',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem2 extends StatelessWidget {
  const CardItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            const Positioned(
              right: 8,
              top: 8,
              child: Icon(
                Icons.apps,
                size: 12,
              ),
            ),
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 24,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Monthly Salary',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                        text: '\$9995',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: '.10',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final Color color;

  const FilterButton({
    required this.label,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
    );
  }
}
