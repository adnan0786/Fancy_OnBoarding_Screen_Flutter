import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FancyOnBoarding(
      pageList: [
        PageModel(
            color: Color(0xfffd7878),
            heroImagePath: "assets/introduction1.png",
            title: Center(
              child: Text(
                "Find Places",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Find all popular and best places and hotels of city",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            icon: Icon(
              Icons.location_city_sharp,
              color: Color(0xfffd7878),
            )),
        PageModel(
            color: Color(0xff753de7),
            heroImagePath: "assets/introduction2.png",
            title: Center(
              child: Text(
                "Popular Hotels",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "City top standard restaurants with great chef and taste",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            icon: Icon(
              Icons.hot_tub_sharp,
              color: Color(0xff753de7),
            )),
        PageModel(
            color: Color(0xff3da3e7),
            heroImagePath: "assets/introduction3.png",
            title: Center(
              child: Text(
                "Best Hospitals",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Find best hospitals that have world best doctor's and good staff",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            icon: Icon(
              Icons.local_hospital_sharp,
              color: Color(0xff3da3e7),
            )),
        PageModel(
            color: Color(0xffFFE044),
            heroImagePath: "assets/introduction4.png",
            title: Center(
              child: Text(
                "Free Parking",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Find free parking near to main city center",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            icon: Icon(
              Icons.local_parking_sharp,
              color: Color(0xffFFE044),
            )),
        PageModel(
            color: Color(0xffFF8944),
            heroImagePath: "assets/introduction5.png",
            title: Center(
              child: Text(
                "Shopping Mall",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Big shopping malls with great infrastructure and all brands",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xffFF8944),
            ))
      ],
      bottomMargin: 10,
      showSkipButton: true,
      skipButton: Padding(
        padding: EdgeInsets.only(top: 10, right: 10),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              "Skip",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      onSkipButtonPressed: () {
        print("On Skip pressed");
      },
      onDoneButtonPressed: () {
        print("On Done Pressed");
      },
      doneButton: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              "Done",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ));
  }
}
