import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSlider1 extends StatefulWidget {
  @override
  _CarouselSlider1State createState() => _CarouselSlider1State();
}

class _CarouselSlider1State extends State<CarouselSlider1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 8),
          height: 180.0,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1800),
          onPageChanged: (index, n) {
            setState(() {
              _currentIndex = index;
            });
          }),
      items: CarouselImg.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 1),
                    blurRadius: 10.0,
                    spreadRadius: 0.3,
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(i),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  List<String> CarouselImg = [
    'assets/images/slide1.jpeg',
    'assets/images/slide2.jpeg',
    'assets/images/slide3.png',
  ];
}
