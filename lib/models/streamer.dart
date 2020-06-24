import 'package:flutter/material.dart';

class Streamer {

  final String name;
  final String numOfFollowers;
  final String imgPath;
  // others
  final Color color;

  Streamer(
  {
    this.name,
    this.numOfFollowers,
    this.imgPath,
    this.color,
}
      );

  static List<Streamer> streamerList = [
    Streamer(
      name: 'Tim Sneath',
      numOfFollowers: '972k',
      color: Colors.orangeAccent[200],
      imgPath: 'images/aviT0.png'
    ),

    Streamer(
        name: 'Jacob Adams',
        numOfFollowers: '802k',
        color: Colors.orangeAccent[100],
        imgPath: 'images/aviT1.png'
    ),

    Streamer(
        name: 'David Parker',
        numOfFollowers: '733k',
        color: Colors.orangeAccent[200],
        imgPath: 'images/aviT0.png'
    ),

    Streamer(
        name: 'Shawn Thomas',
        numOfFollowers: '472k',
        color: Colors.orangeAccent[100],
        imgPath: 'images/aviT1.png'
    ),

    Streamer(
        name: 'Harry Bane',
        numOfFollowers: '300',
        color: Colors.orangeAccent[200],
        imgPath: 'images/aviT0.png'
    ),

    Streamer(
        name: 'Fred Thomas',
        numOfFollowers: '231k',
        color: Colors.orangeAccent[100],
        imgPath: 'images/aviT1.png'
    ),

    Streamer(
        name: 'Daniel Felix',
        numOfFollowers: '122k',
        color: Colors.orangeAccent[200],
        imgPath: 'images/aviT0.png'
    ),
  ];
}