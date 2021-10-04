import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottombar(),
      body: Stack(

        children: <Widget>[
          Container(
            height: size.height*0.45,
            decoration: BoxDecoration(
              color: Colors.purpleAccent.withOpacity(0.4),


            ),
          ),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size.height*0.05,
                ),
                Text("Meditation",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),

                ),
                SizedBox(height: 10,),
                Text("3-10 mins",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.purpleAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),

                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: size.width*0.6,
                  child: Text("Live happier and healthier by learning the fundamentals of mediation",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.purpleAccent.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),

                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Wrap(
                  spacing: 12.5,
                  runSpacing: 10,

                  children: <Widget>[
                    SessionCard(sessionNo: 01,isdone: false,),
                    SessionCard(sessionNo: 2),
                    SessionCard(sessionNo: 3),
                    SessionCard(sessionNo:4),
                    SessionCard(sessionNo: 5),
                    SessionCard(sessionNo: 6),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Mediation",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Assets\Fonts\Poppins-Regular.ttf",
                ) ,
                ),
                SizedBox(height: 20,),
                Container(
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,1),
                        color: Colors.black45.withOpacity(0.3),
                        blurRadius: 3,
                        spreadRadius: -1,
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 8),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.spa_sharp,
                        color: Colors.purple.withOpacity(0.7),
                        size: 50,),
                        SizedBox(width: 20,),
                        RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Basics 2\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purpleAccent,

                            ),

                          ),
                          TextSpan(
                            text: "Start your practice\n now",
                            style: TextStyle(

                              fontSize: 20,
                              color: Colors.black45,

                            ),

                          ),


                        ],


                        ),
                        ),
                        SizedBox(width: 40,),
                        Icon(Icons.lock,
                        color: Colors.blueGrey,
                        size: 30,),


                      ],
                    ),
                  ),
                ),



              ],


            ),
          ),
          ),





        ],
      ),



    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionNo;
  final bool isdone ;
  const SessionCard({
    Key? key,
    required this.sessionNo,
    this.isdone = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
          width: constraint.maxWidth/2 -7 ,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,0),
                color: Colors.purpleAccent.withOpacity(0.2),
                blurRadius: 50,
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.play_arrow,
                    color: isdone ? Colors.blueAccent : Colors.white),
                  backgroundColor: isdone ? Colors.grey.withOpacity(0.3) : Colors.blueAccent,
                ),
                SizedBox(width: 10,),
                Text("Session 0$sessionNo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),)

              ],
            ),
          ),
        );
      }
    );
  }
}
