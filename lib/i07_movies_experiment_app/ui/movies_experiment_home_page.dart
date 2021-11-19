import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesExperimentHomePage extends StatefulWidget {
  const MoviesExperimentHomePage({Key? key}) : super(key: key);

  @override
  State<MoviesExperimentHomePage> createState() =>
      _MoviesExperimentHomePageState();
}

class _MoviesExperimentHomePageState extends State<MoviesExperimentHomePage> {
  CarouselController _carouselController = new CarouselController();

  int _current = 0;
  int _oldIndex = 0;
  bool _crossFade = true;
  double _opacity = 1;

  final List<dynamic> _movies = [
    {
      'title': 'Black Widow',
      'image':
          'https://www.moviepostersgallery.com/wp-content/uploads/2020/08/Blackwidow2.jpg',
      'description': 'Black Widow'
    },
    {
      'title': 'The Suicide Squad',
      'image':
          'https://static.wikia.nocookie.net/headhuntersholosuite/images/7/77/Suicide_Squad%2C_The.jpg/revision/latest?cb=20210807172814',
      'description': 'The Suicide Squad'
    },
    {
      'title': 'Godzilla Vs Kong',
      'image':
          'https://pbs.twimg.com/media/EwTsO9CVcAUxoMM?format=jpg&name=large',
      'description': 'Godzilla Vs Kong'
    },
    {
      'title': 'Basketball',
      'image':
          'https://cdn.pixabay.com/photo/2013/03/21/15/52/basketball-95607_960_720.jpg',
      'description': 'Basketball'
    }
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _carouselItems = buildCoList();

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            BgAnimated(
              movies: _movies,
              current: _current,
              oldIndex: _oldIndex,
              crossFade: _crossFade,
              opacity: _opacity,
            ),
            Positioned.fill(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(0),
                      Colors.grey.shade50.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // height: MediaQuery.of(context).size.height * 1.15,
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 500,
                  // aspectRatio: 16 / 9,
                  viewportFraction: 0.65,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _oldIndex = _current;
                      _current = index;
                      // print("INDEX : $index");
                      // print("OLD : $_old");
                    });
                  },
                  onScrolled: (value) {
                    if (value != null) {
                      setState(() {
                        _opacity = value;
                      });
                    }
                  },
                ),
                items: _carouselItems,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildCoList() {
    return _movies.map((e) {
      // _crossFade = _current == _movies.indexOf(e);
      // print('_crossFade : $_crossFade');
      return Container(
        // width: MediaQuery.of(context).size.width,
        // margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.all(25.0),
        // clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AnimatedOpacity(
              SizedBox(
                height: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    e['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                e['title'],
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              // rating
              const SizedBox(height: 10),
              Text(
                e['description'],
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: _current == _movies.indexOf(e) ? 1.0 : 0.0,
                // opacity: _crossFade ? 1.0 : 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '2h',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.play_circle_filled,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Watch',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox()
            ],
          ),
        ),
      );
    }).toList();
  }
}

class BgAnimated extends StatelessWidget {
  const BgAnimated({
    Key? key,
    required List movies,
    required int current,
    required int oldIndex,
    required bool crossFade,
    required double opacity,
  })  : _movies = movies,
        _current = current,
        _oldIndex = oldIndex,
        _crossFade = crossFade,
        _opacity = opacity,
        super(key: key);

  final List _movies;
  final int _current;
  final int _oldIndex;
  final bool _crossFade;
  final double _opacity;

  @override
  Widget build(BuildContext context) {
    double opacity = 1;
    double end = 1;
    print("_opacity : $_opacity");
    if (_opacity != null && _opacity != 1) {
      opacity = _opacity - 1000;
      opacity = opacity - opacity.toInt();
      opacity = end - opacity;
      print("opacity : $opacity");
      if (opacity < 0.25) {
        opacity = end - opacity;
      }
    }
    // double opacityCurrent = 1;
    // double opacityNext = 0;
    // double end = 1;
    // if (_opacity != 1) {
    //   opacityCurrent = _opacity - 1000;
    //   opacityCurrent = opacityCurrent - opacityCurrent.toInt();
    //   opacityCurrent = end - opacityCurrent;
    //   opacityNext = opacityCurrent;
    //   print("opacity : $opacityCurrent");
    //   if (opacityCurrent < 0.25) {
    //     opacityCurrent = end - opacityCurrent;
    //   }
    // }

    return Stack(
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: opacity,
          child: Image.network(_movies[_current]['image'], fit: BoxFit.cover),
        ),
        // AnimatedOpacity(
        //   duration: const Duration(milliseconds: 500),
        //   opacity: opacityNext,
        //   child: Image.network(_movies[_current]['image'], fit: BoxFit.cover),
        // ),
      ],
    );

    // return AnimatedOpacity(
    //   duration: const Duration(milliseconds: 500),
    //   opacity: opacity, //_crossFade ? 1.0 : 0.0,
    //   child: Image.network(_movies[_current]['image'], fit: BoxFit.cover),
    // );
    //
    // return AnimatedOpacity(
    //   duration: const Duration(milliseconds: 500),
    //   opacity: opacity, //_crossFade ? 1.0 : 0.0,
    //   child: Image.network(_movies[_current]['image'], fit: BoxFit.cover),
    // );

    // return AnimatedCrossFade(
    //   duration: const Duration(milliseconds: 0),
    //   crossFadeState:
    //       opacity < 0.55 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    //   firstChild: Image.network(_movies[_current]['image'],
    //       fit: BoxFit.cover, key: UniqueKey()),
    //   secondChild: Image.network(_movies[_old]['image'],
    //       fit: BoxFit.cover, key: UniqueKey()),
    // );
  }
}
