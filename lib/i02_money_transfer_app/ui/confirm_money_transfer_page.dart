import 'package:flutter/material.dart';

class ConfirmMoneyTransferPage extends StatelessWidget {
  const ConfirmMoneyTransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  // height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Do you approve the transfer ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                      const RowItem(
                        title: 'SENDER',
                        subTitle: 'LeeLoo CHAN',
                        icon: Icons.person_outline,
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                      const RowItem(
                          title: 'ACCEPTOR',
                          subTitle: 'Jan Kun',
                          icon: Icons.person_outline),
                      const RowItem(
                          title: 'AMOUNT',
                          subTitle: '\$250',
                          icon: Icons.assessment),
                      const RowItem(
                          title: 'THE DATE THE PROCESS WILL OCCUR',
                          subTitle: '24/12/2017',
                          icon: Icons.event),
                      const RowItem(
                          title: 'PAYMENT METHOD',
                          subTitle: 'Personal',
                          icon: Icons.local_library),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                      const RowItem(
                          title: 'DESCRIPTION',
                          subTitle: 'for gift',
                          icon: Icons.edit),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                      const RowItem(
                          title: 'PROCESSING FREE',
                          subTitle: '\$1.25',
                          icon: Icons.format_align_justify),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Confirm Money Transfer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '-\$252.20',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.white70,
                      ),
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;

  const RowItem({
    required this.title,
    required this.subTitle,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(icon, color: Colors.grey)],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 10, bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 10,
                  bottom: 10,
                ),
                child: Text(
                  subTitle,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
