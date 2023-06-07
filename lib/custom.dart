import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

myCarousel() {
  return CarouselSlider(
    options: CarouselOptions(
      autoPlay: true,
      enlargeCenterPage: true,
      aspectRatio: 200 / 100,
      autoPlayCurve: Curves.bounceOut,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.6,
    ),
    items: [
      'images/logo.png',
      'images/logo2.png',
      'images/log.png',
    ].map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(url),
                ),
            ),
          );
        },
      );
    }).toList(),
    );
}