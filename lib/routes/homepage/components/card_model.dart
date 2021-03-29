import 'dart:ui';

import 'package:flutter/material.dart';

class CardModel {
  final String imageaddress;
  final String imgTitle;
  final Color color;

  CardModel({this.imgTitle, this.color, @required this.imageaddress})
      : assert(imageaddress != null);
}

List<CardModel> imagelist = [
  CardModel(
      imgTitle: 'Image1',
      color: Colors.pinkAccent,
      imageaddress: 'assets/images/image1.png'),
  CardModel(
      imgTitle: 'Image2',
      color: Colors.blueAccent,
      imageaddress: 'assets/images/image2.jpeg'),
  CardModel(
    imgTitle: 'Image3',
    color: Colors.lightBlue,
    imageaddress: 'assets/images/image3.jpeg',
  ),
  CardModel(
    imgTitle: 'Image4',
    imageaddress: 'assets/images/image4.png',
    color: Colors.brown,
  ),
  CardModel(
    imgTitle: 'Image5',
    color: Colors.lightGreen,
    imageaddress: 'assets/images/image5.png',
  ),
];
