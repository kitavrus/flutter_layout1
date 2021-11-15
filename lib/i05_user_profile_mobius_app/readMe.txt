https://www.figma.com/file/3hDOu4hwYfBeY879pApQzm/Mobius-2020?node-id=3%3A68

Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 8),
        if (subTitle != null && subTitle!.isNotEmpty) ...[
          Text(
            subTitle!,
            style: TextStyle(
                color: Colors.black.withOpacity(0.55),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
          const SizedBox(height: 20),
        ] else ...[
          const SizedBox.shrink()
        ],
      ],
    );


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ShadowDemo(),
      ),
    );
  }
}

class ShadowDemo extends StatefulWidget {
  @override
  _ShadowDemoState createState() => _ShadowDemoState();
}

class _ShadowDemoState extends State<ShadowDemo> {
  var _image = NetworkImage('https://placebear.com/300/300');

  var _opacity = 1.0;
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _blurRadius = 0.0;
  var _spreadRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child:
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF0099EE),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, _opacity),
                  offset: Offset(_xOffset, _yOffset),
                  blurRadius: _blurRadius,
                  spreadRadius: _spreadRadius,
                )
              ],
            ),
            child: Image(image:_image, width: 100, height: 100,),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Slider(
                  value: _opacity,
                  min: 0.0,
                  max: 1.0,
                  onChanged: (newValue) =>
                  {
                    setState(() => _opacity = newValue)
                  },
                ),
                Slider(
                  value: _xOffset,
                  min: -100,
                  max: 100,
                  onChanged: (newValue) =>
                  {
                    setState(() => _xOffset = newValue)
                  },
                ),
                Slider(
                  value: _yOffset,
                  min: -100,
                  max: 100,
                  onChanged: (newValue) =>
                  {
                    setState(() => _yOffset = newValue)
                  },
                ),
                Slider(
                  value: _blurRadius,
                  min: 0,
                  max: 100,
                  onChanged: (newValue) =>
                  {
                    setState(() => _blurRadius = newValue)
                  },
                ),
                Slider(
                  value: _spreadRadius,
                  min: 0,
                  max: 100,
                  onChanged: (newValue) =>
                  {
                    setState(() => _spreadRadius = newValue)
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}