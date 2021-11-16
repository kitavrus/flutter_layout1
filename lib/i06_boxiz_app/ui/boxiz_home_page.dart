import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout1/i06_boxiz_app/model/boxiz.dart';

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
                    return CardItemMy(boxiz: _boxiz);
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
      child: SizedBox(
        height: 380,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
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
  const CardItem({
    required Boxiz boxiz,
    Key? key,
  })  : _boxiz = boxiz,
        super(key: key);

  final Boxiz _boxiz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 380,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
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
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('data'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
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
                radius: 12,
              ),
              Icon(Icons.comment_bank_outlined),
              Text('128'),
              Icon(Icons.vpn_key),
              Text('128'),
              Icon(Icons.shield),
              Text('3'),
              Badge(
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
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
                  onPressed: () {}, icon: Icon(Icons.home), iconSize: 28),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.radio_button_checked),
                  iconSize: 28),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shield), iconSize: 28),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.waterfall_chart),
                  iconSize: 28),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.confirmation_num_outlined),
                  iconSize: 28),
            ],
          ),
        ),
        flex: 2);
  }
}
