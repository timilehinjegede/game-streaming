import 'package:flutter/material.dart';
import 'package:game_streaming/utils/colors.dart';
import 'package:game_streaming/utils/screen_util.dart';
import 'package:line_icons/line_icons.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      width: 150,
      color: lightBgColor,
      child: Column(
        children: [
          // custom logo
          Container(
            child: Column(
              children: [
                Container(
                  height: 8,
                  width: 35,
                  color: Color(0xffFE5E50),
                ),

                YBox(5),

                Container(
                  height: 35,
                  width: 8,
                  color: Color(0xffFE5E50),
                ),
              ],
            ),
          ),

          Spacer(),

          InkWell(
            onTap: (){
              setState(() {
                _currentIndex = 0;
              });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xffE05E51),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow:  _currentIndex == 0 ? [
                  BoxShadow(
                    color: Color(0xffE05E51).withOpacity(0.2),
                    offset: Offset(0,2),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ] : []
              ),
              child: Icon(Icons.dashboard, color: Colors.white,),
            ),
          ),

          YBox(50),

          InkWell(
            onTap: (){
              setState(() {
                _currentIndex = 1;
              });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF4895D),
                   boxShadow: _currentIndex == 1 ? [
                    BoxShadow(
                      color: Color(0xffF4895D).withOpacity(0.2),
                      offset: Offset(0,2),
                      spreadRadius: 2,
                      blurRadius: 2,
                    )
                  ] : []
              ),
              child: Icon(LineIcons.rocket, color: Colors.white,),
            ),
          ),

          YBox(50),

          InkWell(
            onTap: (){
              setState(() {
                _currentIndex = 2;
              });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff734CF3),
                  boxShadow: _currentIndex == 2 ? [
                    BoxShadow(
                      color: Color(0xff734CF3).withOpacity(0.2),
                      offset: Offset(0,2),
                      spreadRadius: 2,
                      blurRadius: 2,
                    )
                  ] : []
              ),
              child: Icon(Icons.message, color: Colors.white,),
            ),
          ),

          YBox(50),


          InkWell(
            onTap: (){
              setState(() {
                _currentIndex = 3;
              });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff4CCBF4),
                  boxShadow: _currentIndex == 3 ? [
                    BoxShadow(
                      color: Color(0xff4CCBF4).withOpacity(0.2),
                      offset: Offset(0,2),
                      spreadRadius: 2,
                      blurRadius: 2,
                    )
                  ] : []
              ),
              child: Icon(Icons.star, color: Colors.white,),
            ),
          ),

          Spacer(),

          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Icon(Icons.arrow_back_ios, size: 18, color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}
