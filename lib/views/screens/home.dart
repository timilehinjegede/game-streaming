import 'package:flutter/material.dart';
import 'package:game_streaming/models/game.dart';
import 'package:game_streaming/models/streamer.dart';
import 'package:game_streaming/models/video.dart';
import 'package:game_streaming/utils/colors.dart';
import 'package:game_streaming/utils/screen_util.dart';
import 'package:game_streaming/views/widgets/game.dart';
import 'package:game_streaming/views/drawers/navigation_drawer.dart';
import 'package:game_streaming/views/drawers/profile_drawer.dart';
import 'package:game_streaming/views/widgets/streamers.dart';
import 'package:game_streaming/views/widgets/video.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgColor,
      drawer: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        child: SizedBox(
          width: 150,
          child: Drawer(elevation: 0, child: NavigationDrawer()),
        ),
      ),
      endDrawer: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        child: SizedBox(
          width: 400,
          child: Drawer(
            elevation: 0,
            child: ProfileDrawer(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: SizedBox(
                        height: 50,
                        width: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 25,
                              color: Color(0xffFE5E50),
                            ),
                            YBox(5),
                            Container(
                              height: 25,
                              width: 8,
                              color: Color(0xffFE5E50),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 25.0, right: 15.0),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: lightBgColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         Expanded(
                           child: TextField(
                             style: TextStyle(
                               color: Colors.white70,
                             ),
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: 'Search games...',
                               hintStyle:  TextStyle(
                                 fontSize: 14,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white70,
                               ),
                             ),
                             cursorColor: Colors.white,
                           ),
                         ),
                          Image(
                            height: 20,
                            width: 20,
                            image: AssetImage('images/magnifying-glass.png'),
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    XBox(20),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: lightBgColor,
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    XBox(80),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffE05E51),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start Stream',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          XBox(8),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Color(0xffE05E51),
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/avatar.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),

              YBox(70),

              // recommended games
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Recommended games',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              YBox(30),

              Container(
                height: 200,
                width: double.infinity,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  scrollDirection: Axis.horizontal,
                  itemCount: Game.gameList.length,
                  separatorBuilder: (context, index) => XBox(30),
                  itemBuilder: (context, index) {
                    return RecommendedGame(
                      name: Game.gameList[index].gameTitle,
                      views: Game.gameList[index].numOfViews,
                      color: Game.gameList[index].color,
                      imagePath: Game.gameList[index].imgPath,
                      height: Game.gameList[index].imgHeight,
                      bottom: Game.gameList[index].positionBottom,
                      left: Game.gameList[index].positionLeft,
                    );
                  },
                ),
              ),

              YBox(50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Popular streamers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              YBox(20),

              Container(
                height: 60,
                width: double.infinity,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => XBox(28),
                  itemCount: Streamer.streamerList.length,
                  itemBuilder: (context, index) {
                    return PopularStreamers(
                      name: Streamer.streamerList[index].name,
                      followers: Streamer.streamerList[index].numOfFollowers,
                      color: Streamer.streamerList[index].color,
                      imagePath: Streamer.streamerList[index].imgPath,
                    );
                  },
                ),
              ),

              YBox(60),

              Container(
                height: 200,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => XBox(30),
                  itemCount: Video.videoList.length,
                  itemBuilder: (context, index) {
                    return GameVideoComponent(Video.videoList[index].imgPath);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
