import 'package:flutter/material.dart';
import 'package:flutter_layout1/i02_money_transfer_app/ui/add_new_cart_page.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class MoneyTransferHomePage extends StatelessWidget {
  const MoneyTransferHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 20,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(const AddNewCartPage());
                      },
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Add New',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.add_circle_outline,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 1,
                            width: 70,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'My Cards',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CreditCart(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TransferItem(
                        title: 'Location',
                        subTitle: 'Transfer',
                        icon:
                            Icon(Icons.location_searching, color: Colors.white),
                      ),
                      const TransferItem(
                        title: 'My',
                        subTitle: 'Contacts',
                        icon: Icon(Icons.person_outline, color: Colors.white),
                      ),
                      TransferItem(
                        title: 'Saved',
                        subTitle: 'Transfers',
                        icon: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: const SizedBox(
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: const [
                        OperationItem(
                            operationTypeTitle: 'You received a payment',
                            clientName: 'Ilon Maskoff',
                            sum: '200'),
                        SizedBox(
                          height: 10,
                        ),
                        OperationItem(
                            operationTypeTitle: 'Requested payment',
                            clientName: 'Maskoff Ilon',
                            sum: '100'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Yesterday',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const OperationItem(
                        operationTypeTitle: 'Requested payment',
                        clientName: 'Ilon Maskoff',
                        sum: '159'),
                    const SizedBox(
                      height: 10,
                    ),
                    const OperationItem(
                        operationTypeTitle: 'You received a payment',
                        clientName: 'Maskoff Ilon',
                        sum: '99'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OperationItem extends StatelessWidget {
  final String operationTypeTitle;
  final String clientName;
  final String sum;

  const OperationItem({
    Key? key,
    required this.operationTypeTitle,
    required this.clientName,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/girl.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              operationTypeTitle,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              clientName,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '\$$sum',
          style: TextStyle(
            color: Colors.purple[50],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class TransferItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget icon;

  const TransferItem({
    required this.title,
    required this.subTitle,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white),
            ),
            child: icon,
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

class CreditCart extends StatelessWidget {
  const CreditCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Egor Letov',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Icon(
                  LineIcons.visaCreditCard,
                  size: 45,
                )
              ],
            ),
            const Spacer(),
            const Text(
              '1234   * * * *   * * * *   3214',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '\$9.999.00',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
