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
      bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(31, 175, 159, 214),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.house),
                onPressed: ()
                {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                ),
              IconButton(
                icon: Icon(Icons.shield),
                onPressed: ()
                {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LeaderBoardPage()));
                },
              ),
              IconButton(
                  icon: Icon(Icons.girl_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profilePage()));
                  }),
              IconButton(
              icon: Icon(Icons.notification_important),
              onPressed: ()
              {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
              },
              ),
            ],
          )),
    );
  }
}
