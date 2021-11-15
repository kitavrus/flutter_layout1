import 'dart:math' as math;
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BankWalletHomePage extends StatefulWidget {
  const BankWalletHomePage({Key? key}) : super(key: key);

  @override
  State<BankWalletHomePage> createState() => _BankWalletHomePageState();
}

class _BankWalletHomePageState extends State<BankWalletHomePage> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 0;
                  });
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 1;
                  });
                },
                icon: Icon(Icons.account_balance_wallet)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 2;
                  });
                },
                icon: Icon(Icons.pie_chart)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 3;
                  });
                },
                icon: Icon(Icons.description)),
            IconButton(
                onPressed: () {
                  setState(() {
                    bottomNavIndex = 4;
                  });
                },
                icon: Icon(Icons.settings)),
          ],
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
                  return Container(color: Colors.red);
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
