import 'package:flutter/material.dart';
import 'package:game_streaming/utils/colors.dart';

class Game {

  final String gameTitle;
  final String numOfViews;
  final String imgPath;
  final Color color;
  // others
  final double imgHeight;
  final double positionLeft;
  final double positionBottom;

  Game({
    this.gameTitle,
    this.numOfViews,
    this.imgPath,
    this.color,
    this.imgHeight,
    this.positionBottom,
    this.positionLeft
});

  static List<Game> gameList = [
    Game(
      gameTitle: 'Overwatch',
      numOfViews: '45,967',
      imgPath: 'images/overwatch4.png',
      color: overWatchBg,
      imgHeight: 200,
      positionBottom: 15,
      positionLeft: 20
    ),

    Game(
      gameTitle: 'Apex Legends',
      numOfViews: '31,632',
      imgPath: 'images/al2.png',
      color: apexLegendBg,
        imgHeight: 160,
        positionBottom: 42,
        positionLeft: 60
    ),

    Game(
      gameTitle: 'Cyberspace',
      numOfViews: '13,933',
      imgPath: 'images/overwatch2.png',
      color: cyberSpaceBg,
        imgHeight: 175,
        positionBottom: 35,
        positionLeft: 45
    ),

    Game(
      gameTitle: 'HunterKiller',
      numOfViews: '4,003',
      imgPath: 'images/al3.png',
      color: Color(0xff403937).withOpacity(.5),
        imgHeight: 150,
        positionBottom: 50,
        positionLeft: 75
    ),

    Game(
      gameTitle: 'Deadpool',
      numOfViews: '3,333',
      imgPath: 'images/deadpool.png',
      color: Colors.red.withOpacity(0.5),
        imgHeight: 180,
        positionBottom: 25,
        positionLeft: -10
    ),

    Game(
      gameTitle: 'Fortnite',
      numOfViews: '2,003',
      imgPath: 'images/fornite.png',
      color: Color(0xffEF64BB).withOpacity(.2),
        imgHeight: 200,
        positionBottom: 15,
        positionLeft: 10
    ),

    Game(
      gameTitle: 'Hitman',
      numOfViews: '1, 241',
      imgPath: 'images/hitman.png',
      color: lighterBgColor,
        imgHeight: 183,
        positionBottom: 20,
        positionLeft: 20
    ),
  ];
}