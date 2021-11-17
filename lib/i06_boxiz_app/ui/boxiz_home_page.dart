import 'package:flutter/material.dart';
import 'package:flutter_layout1/i06_boxiz_app/model/boxiz.dart';
import 'package:flutter_layout1/i06_boxiz_app/theme/boxiz_theme.dart';
import 'package:flutter_layout1/i06_boxiz_app/ui/doxiz_detail_page.dart';

class BoxizHomePage extends StatelessWidget {
  const BoxizHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopAppBar(),
            Expanded(
              child: ListView.builder(
                  itemCount: boxizItems.length,
                  itemBuilder: (context, index) {
                    Boxiz _boxiz = boxizItems[index];
                    return CardItem(boxiz: _boxiz);
                  }),
              flex: 20,
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}

class CardItemMy extends StatelessWidget {
  const CardItemMy({
    required Boxiz boxiz,
    Key? key,
  })  : _boxiz = boxiz,
        super(key: key);

  final Boxiz _boxiz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // height: 380,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.circular(16),
            //   topLeft: Radius.circular(16),
            // ),
            // image: DecorationImage(
            //   image: NetworkImage(_boxiz.img ?? ''),
            //   fit: BoxFit.contain,
            // ),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(_boxiz.img ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Image.network(
                //   _boxiz.img ?? '',
                //   // height: MediaQuery.of(context).size.height * 0.3,
                //   // fit: BoxFit.fill,
                //   // alignment: Alignment.topCenter,
                // ),
              ),
              // Expanded(
              //   flex: 5,
              //   child: SizedBox.shrink(),
              // ),
              // Expanded(
              //   flex: 4,
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           Text('data'),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Boxiz _boxiz;

  const CardItem({
    required Boxiz boxiz,
    Key? key,
  })  : _boxiz = boxiz,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BoxizDetailPage(boxiz: _boxiz),
            ),
          );
        },
        child: SizedBox(
          height: 380,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: BoxizTheme.cardColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(_boxiz.img ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    color: BoxizTheme.cardColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${_boxiz.prize}",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6))),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "${_boxiz.type}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Text("${_boxiz.title}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "${_boxiz.datetime}",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Icon(
                              Icons.emoji_events,
                              color: Colors.tealAccent,
                            ),
                            Text(
                              "${_boxiz.coin}",
                              style: const TextStyle(
                                color: Colors.tealAccent,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: _boxiz.items
                                      ?.map((e) => ItemNum(item: e))
                                      .toList() ??
                                  [],
                            ),
                            const Spacer(),
                            Text(
                              'Live in',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '${_boxiz.liveIn?.inMinutes ?? 0}m ${_boxiz.liveIn?.inSeconds ?? 0}s',
                              style: const TextStyle(
                                color: BoxizTheme.accentColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemNum extends StatelessWidget {
  final String item;
  const ItemNum({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
      ),
      child: Text(
        item,
        style:
            const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/girl.jpg',
                ),
                radius: 18,
              ),
              Row(
                children: const [
                  Text(
                    'B',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '128',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.vpn_key,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.shield,
                    color: BoxizTheme.accentColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '3',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              Stack(
                children: [
                  const Positioned(
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 1,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: BoxizTheme.backgroundColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        flex: 2);
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                iconSize: 28,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.radio_button_checked),
                iconSize: 28,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shield),
                iconSize: 28,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.waterfall_chart),
                iconSize: 28,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.confirmation_num_outlined),
                iconSize: 28,
                color: Colors.white,
              ),
            ],
          ),
        ),
        flex: 2);
  }
}
