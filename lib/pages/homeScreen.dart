import 'package:benzene_/pages/leaderboard.dart';
import 'package:benzene_/pages/notifications.dart';
import 'package:benzene_/pages/profilePage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  NavBars createState() => NavBars();
}

class NavBars extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
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
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey[100],
              ),
            ),
          ),
          Center(
            child: Icon(
              Icons.circle,
              color: Colors.blueGrey[100],
              size: 300,
            ),
          ),
          Container(
            width: 150,
            height:30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blueGrey[100],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(31, 175, 159, 214),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5.0, 20.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.house, size: 40.0,color: Colors.white),
                  onPressed: ()
                  {
                    Navigator.pop(context);
                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              
                  },
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5.0, 20.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.shield,size: 40.0,color: Colors.white),
                  onPressed: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LeaderBoardPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,5.0, 20.0, 5.0),
                child: IconButton(
                    icon: Icon(Icons.girl_rounded,size: 40.0,color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profilePage()));
                    }),
              ),
              Padding(
               padding: const EdgeInsets.fromLTRB(20.0,5.0, 20.0, 5.0),
                child: IconButton(
                icon: Icon(Icons.notification_important,size: 40.0,color: Colors.white),
                onPressed: ()
                {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
                },
                ),
              ),
            ],
          )),
    );
  }
}
