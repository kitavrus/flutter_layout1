import 'package:flutter/material.dart';

class AirplaneTicketReservationDetailPage extends StatefulWidget {
  final Color color;

  const AirplaneTicketReservationDetailPage({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  State<AirplaneTicketReservationDetailPage> createState() =>
      _AirplaneTicketReservationDetailPageState();
}

class _AirplaneTicketReservationDetailPageState
    extends State<AirplaneTicketReservationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFFFf6f5fb),
        // backgroundColor: const Color(0xFFFf6f5fb),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: const Color(0xFFFf6f5fb),
        //   foregroundColor: Colors.black,
        // ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  color: widget.color,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.keyboard_backspace,
                                color: Colors.white, size: 25),
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            'SFO',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.swap_horiz,
                            color: Colors.white,
                            size: 25,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'VOZ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(width: 160),
                          const Spacer(),
                          const Icon(Icons.build,
                              color: Colors.white, size: 25),
                        ],
                      ),
                      const SizedBox(height: 13),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('12 Sep - 15 Sep',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('1 Adult - Economy',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  height: MediaQuery.of(context).size.height * 0.88,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFf6f5fb),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '21 Search result',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Icon(
                              Icons.filter_list,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Expanded(
                          child: ListView(
                            children: const [
                              ItemSearch(),
                              ItemSearch(),
                              ItemSearch(),
                              ItemSearch(),
                              ItemSearch(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ItemSearch extends StatelessWidget {
  const ItemSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 500,
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.motorcycle,
                  color: Colors.orange,
                  size: 32,
                ),
                SizedBox(width: 15),
                Text(
                  'Moscow Airway',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Spacer(),
                Text(
                  '\$ 129',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15),
                Icon(Icons.trending_flat, color: Colors.black, size: 27),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _departure(),
                _locationPlane(),
                _arrive(),
              ],
            )
          ],
        ),
      );
}

Widget _departure() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Departure',
          style: TextStyle(color: Colors.black54),
        ),
        SizedBox(height: 7),
        Text('4:55', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('SFO', style: TextStyle(color: Colors.black54)),
        SizedBox(height: 25),
        Text('21:55', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('JFK', style: TextStyle(color: Colors.black54)),
      ],
    );

Widget _arrive() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Arrive', style: TextStyle(color: Colors.black54)),
        SizedBox(height: 7),
        Text('09:55', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('JFC', style: TextStyle(color: Colors.black54)),
        SizedBox(height: 25),
        Text('03:35', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('VOZ', style: TextStyle(color: Colors.black54)),
      ],
    );

Widget _locationPlane() {
  const _blueDot = Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8);
  const _greenDot =
      Icon(Icons.fiber_manual_record, color: Colors.green, size: 8);

  return Column(
    children: [
      Row(
        children: [
          const Icon(Icons.flight_takeoff, color: Colors.blue, size: 21),
          ...List.generate(9, (index) => _blueDot),
          ...List.generate(9, (index) => _greenDot),
          const Icon(Icons.location_on, color: Colors.green, size: 21),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          const Icon(Icons.location_on, color: Colors.green, size: 21),
          ...List.generate(9, (index) => _greenDot),
          ...List.generate(9, (index) => _blueDot),
          const Icon(Icons.flight_takeoff, color: Colors.blue, size: 21),
        ],
      )
    ],
  );
}
