import 'package:flutter/material.dart';

class DestinationBox extends StatelessWidget {
  const DestinationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: height * 0.25,
      width: width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              const IconDestination(),
              const SizedBox(width: 17),
              _originAndDestination(),
              const SizedBox(width: 70),
              _originAndDestinationIcon(),
            ],
          ),
        ],
      ),
    );
  }
}

class IconDestination extends StatelessWidget {
  const IconDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _iconBlueDot = Icon(
      Icons.fiber_manual_record,
      color: Colors.blue,
      size: 12,
    );

    const _iconOrangeDot =
        Icon(Icons.fiber_manual_record, color: Color(0xffff89380), size: 12);

    return Column(
      children: [
        const Icon(
          Icons.airplanemode_active,
          color: Colors.blue,
          size: 30,
        ),
        ...List<Widget>.generate(3, (i) => _iconBlueDot),
        ...List<Widget>.generate(3, (i) => _iconOrangeDot),
        const Icon(
          Icons.location_on,
          color: Color(0xffff89380),
          size: 30,
        ),
      ],
    );
  }
}

Widget _originAndDestinationIcon() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('SFO', style: TextStyle(fontSize: 25)),
        SizedBox(height: 15),
        Icon(Icons.swap_vert, color: Color(0xFFF00d5d8), size: 40),
        SizedBox(height: 15),
        Text('VOZ', style: TextStyle(fontSize: 25)),
      ],
    );

Widget _originAndDestination() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Origin \n',
              style: TextStyle(
                color: Color(0xFFfb7b7c5),
                fontSize: 14,
              ),
            ),
            TextSpan(
                text: 'Voronezh',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                )),
          ]),
        ),
        const SizedBox(
          height: 65,
        ),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Destination \n',
              style: TextStyle(
                color: Color(0xFFfb7b7c5),
                fontSize: 14,
              ),
            ),
            TextSpan(
                text: 'VOZ, Voronezh',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                )),
          ]),
        ),
      ],
    );
