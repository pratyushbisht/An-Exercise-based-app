import 'package:covid_19/details_screens.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",

        textTheme: Theme.of(context).textTheme.apply(displayColor: ktextcolor),
        backgroundColor: Colors.white,


        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
              color: Color(0XFFF5CEB8),
              ),
            ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFF2BEA1),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.list),
                      color: Colors.white,
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)
                        {return DetailsScreen();}
                       ));
                        },
                      ),

                    ),
                  ),
                  Text("Good Morning \nPratyush",
                      style: TextStyle(
                        fontFamily: "Assets\Fonts\Poppins-Regular.ttf",
                        fontSize: 30.0,
                        color: ktextcolor,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                  SizedBox(height: 20,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 30,
                      childAspectRatio: .90,
                      children: <Widget>[
                        InformationCard( info: "Diet\n recommendations",
                        logo: Icon(Icons.emoji_food_beverage_sharp,
                        size: 70,
                        color: Colors.orangeAccent,),
                          blur: Colors.orangeAccent.withOpacity(0.3),
                        ),
                        InformationCard( info: "Daily\n exercises",
                          logo: Icon(Icons.sports,
                            size: 70,
                            color: Colors.blueAccent,),
                          blur: Colors.blueAccent.withOpacity(0.3),
                        ),
                        InformationCard( info: "Meditation",
                          logo: Icon(Icons.health_and_safety,
                            size: 70,
                            color: Colors.greenAccent,),
                          blur: Colors.greenAccent.withOpacity(0.3),
                        ),
                        InformationCard( info: "BP\n exercises",
                          logo: Icon(Icons.volunteer_activism,
                            size: 70,
                            color: Colors.pinkAccent,),
                          blur: Colors.pinkAccent.withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}



class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key, required this.info, required this.logo,
    required this.blur,
  }) : super(key: key);
  final String info;
  final Icon logo;
  final Color blur;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,0),
            blurRadius: 50,
            color: blur,
          )
        ]
      ),

      child: Material(

        child: InkWell(
          onTap: (){},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),

                  child: logo,
                ),

              Align(

                child: Text("$info",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Assets\Fonts\Poppins-Regular.ttf",
                  color: ktextcolor,
                  fontSize: 20,
                ),
                  textAlign: TextAlign.center,

                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}



