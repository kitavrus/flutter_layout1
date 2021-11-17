import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_layout1/i06_boxiz_app/model/boxiz.dart';
import 'package:flutter_layout1/i06_boxiz_app/theme/boxiz_theme.dart';

class BoxizDetailPage extends StatelessWidget {
  final Boxiz boxiz;

  const BoxizDetailPage({
    required this.boxiz,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedItems = <BoxizSelect>[
      BoxizSelect(number: 9, isOpen: true),
      BoxizSelect(number: 51, isOpen: true),
      BoxizSelect(isOpen: false),
      BoxizSelect(isOpen: false),
      BoxizSelect(isOpen: false),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height * 0.70,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    boxiz.img ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height * 0.70,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    BoxizTheme.backgroundColor,
                    BoxizTheme.backgroundColor.withOpacity(0.95),
                    // Colors.grey.withOpacity(0.9),
                    BoxizTheme.backgroundColor.withOpacity(0.70),
                    BoxizTheme.backgroundColor.withOpacity(0.50),
                    BoxizTheme.backgroundColor.withOpacity(0.10),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            // top: 0,
            top: 24,
            bottom: 16,
            child: Column(
              children: [
                TopBar(boxiz: boxiz),
                Column(
                  children: [
                    Text(
                      '${boxiz.liveIn?.inHours ?? 0}h ${boxiz.liveIn?.inMinutes ?? 0}m ${boxiz.liveIn?.inSeconds ?? 0}s',
                      style: const TextStyle(
                        color: BoxizTheme.accentColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Start at ${boxiz.datetime}',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _selectedItems
                              .map((item) => SelectedItem(boxizSelect: item))
                              .toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const GridOne(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'TAKEN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                    color: BoxizTheme.backgroundColor
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(
                                        color: BoxizTheme.accentColor)),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'AVAILABLE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'SELECTED',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                GridItems(),
                const SizedBox(height: 25),
                const SubmitButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final BoxizGrid boxizGrid;
  const GridItem({required this.boxizGrid, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (boxizGrid.isAvailable) {
      return _number(boxizGrid.number.toString());
    }

    if (boxizGrid.isSelect != null && boxizGrid.isSelect == true) {
      return _selected();
    }

    return _empty();
  }

  Widget _empty() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget _number(String number) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: BoxizTheme.backgroundColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: BoxizTheme.accentColor),
      ),
      child: Text(
        number,
        style: const TextStyle(
            color: BoxizTheme.accentColor, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _selected() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Icon(
        Icons.check,
        color: Colors.black,
      ),
    );
  }
}

class GridItems extends StatefulWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  final List<BoxizGrid> _boxizGridItems = List.generate(100, (index) {
    final number = (index + 1) == 100 ? '00' : index + 1;
    // final isSelected = index % (Random().nextInt(8) + 1) == 0 ? true : false;
    // final isAvailable = index % (Random().nextInt(3) + 1) == 0 ? true : false;
    final isSelected = Random().nextBool();
    final isAvailable = Random().nextBool();

    return BoxizGrid(
      number.toString(),
      isSelected,
      isAvailable: isAvailable,
    );
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 10,
          mainAxisSpacing: 7.0,
          crossAxisSpacing: 7.0,
          childAspectRatio: 1.08,
          children: _boxizGridItems
              .map(
                (cell) => GestureDetector(
                  onTap: () {
                    if (cell.isAvailable == false && cell.isSelect == false) {
                      return;
                    }

                    if (cell.isAvailable == false && cell.isSelect == true) {
                      setState(() {
                        cell.isAvailable = true;
                        cell.isSelect = false;
                      });
                      return;
                    }

                    setState(() {
                      cell.isAvailable = false;
                      cell.isSelect = true;
                    });
                  },
                  child: GridItem(boxizGrid: cell),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class GridItemsMy extends StatelessWidget {
  const GridItemsMy({
    Key? key,
    required List<BoxizGrid> boxizGridItems,
  })  : _boxizGridItems = boxizGridItems,
        super(key: key);

  final List<BoxizGrid> _boxizGridItems;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: _boxizGridItems
            .map(
              (e) => Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  "${e.number}",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class GridOne extends StatelessWidget {
  const GridOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            'Grid 1',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedItem extends StatelessWidget {
  final BoxizSelect boxizSelect;
  const SelectedItem({
    required this.boxizSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _width = 75.0;
    if (boxizSelect.isOpen) {
      return Container(
        // height: _height,
        width: _width,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.orange,
        ),
        child: Text(
          '${boxizSelect.number}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }
    return Container(
      width: _width,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: BoxizTheme.accentColor,
        ),
        color: BoxizTheme.backgroundColor,
      ),
      child: const Icon(
        Icons.lock,
        color: BoxizTheme.accentColor,
        size: 17,
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: BoxizTheme.accentColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.boxiz,
  }) : super(key: key);

  final Boxiz boxiz;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        Text(
          boxiz.title ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline),
          color: Colors.white,
        ),
      ],
    );
  }
}
