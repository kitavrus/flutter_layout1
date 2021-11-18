import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.network(_movies[_current]['image'], fit: BoxFit.cover),
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
                options: CarouselOptions(
                    height: 500,
                    // aspectRatio: 16 / 9,
                    viewportFraction: 0.65,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: _movies
                    .map(
                      (e) => Container(
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
                              AnimatedRotation(
                                duration: const Duration(milliseconds: 500),
                                turns:
                                    _current == _movies.indexOf(e) ? 1.0 : 0.0,
                                // opacity:
                                //     _current == _movies.indexOf(e) ? 1.0 : 0.0,
                                child: SizedBox(
                                  height: 320,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      e['image'],
                                      fit: BoxFit.cover,
                                    ),
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
                                opacity:
                                    _current == _movies.indexOf(e) ? 1.0 : 0.0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                                fontSize: 14.0,
                                                color: Colors.grey.shade600),
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
                                                fontSize: 14.0,
                                                color: Colors.grey.shade600),
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
                                                fontSize: 14.0,
                                                color: Colors.grey.shade600),
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
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
