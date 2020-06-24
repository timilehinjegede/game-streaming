import 'package:flutter/material.dart';
import 'package:game_streaming/utils/colors.dart';
import 'package:game_streaming/utils/screen_util.dart';

class PopularStreamers extends StatelessWidget {

  final String name;
  final String followers;
  final String imagePath;
  final Color color;


  PopularStreamers({this.name, this.followers, this.imagePath, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          XBox(15),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Followers $followers',
                style: TextStyle(
                  color: lightIndigo,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
