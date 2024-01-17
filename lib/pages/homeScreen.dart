import 'package:benzene_/pages/leaderboard.dart';
import 'package:benzene_/pages/notifications.dart';
import 'package:benzene_/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  NavBars createState() => NavBars();
}

class NavBars extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double value = 100.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(31, 175, 159, 214),
        title: Center(
          child: Text("Harsha's App"),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: SleekCircularSlider(
            initialValue: value,
            min: 0,
            max: 180,
            appearance: CircularSliderAppearance(
              customColors: CustomSliderColors(
                trackColor: Colors.white,
                progressBarColor: Colors.green,
                dotColor: Colors.white,
              ),
              size: 300,
              angleRange: 340,
              startAngle: 270,
            ),
            onChange: (newValue) {
              setState(() {
                value = newValue;
              });
            },
            innerWidget: (double value) {
              return Center(
                child: Text(
                  "${(value.toInt().toString())}",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 46,
                  ),
                ),
              );
            },
          )),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => profilePage()));
            },
           child: Card(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            
            child: Container(
              height: 60,
              width: 180,
              child: Center(
                  child: Text('START',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30))),
            ),
            ),
          ),
          
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(31, 175, 159, 214),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.house, size: 40.0, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.shield, size: 40.0, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LeaderBoardPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: IconButton(
                    icon: Icon(Icons.girl_rounded,
                        size: 40.0, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profilePage()));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.notification_important,
                      size: 40.0, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage()));
                  },
                ),
              ),
            ],
          )),
    );
  }
}
