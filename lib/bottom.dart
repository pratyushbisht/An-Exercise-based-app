import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';



class bottombar extends StatelessWidget {
  const bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(39)),

     ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.calendar_today,
                  size: 40.0,
                  color: Color(0XFFF5CEB8),),
                Text("Daily Tasks",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Assets\Fonts\Poppins-Light.ttf",
                  ),),
              ],
            ),


            Column(
              children: <Widget>[
                Icon(Icons.run_circle_sharp,
                  size: 40.0,
                  color: Color(0XFFF5CEB8),),
                Text("All Exercises",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Assets\Fonts\Poppins-Light.ttf",

                  ),),
              ],
            ),

            Column(
              children: <Widget>[
                Icon(Icons.settings,
                  size: 40.0,
                  color: Color(0XFFF5CEB8),),
                Text("Settings",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Assets\Fonts\Poppins-Light.ttf",
                  ),),
              ],
            ),

          ],

        ),
      ),
    );
  }
}