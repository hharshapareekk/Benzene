import 'package:benzene_/pages/homeScreen.dart';
import 'package:benzene_/pages/leaderboard.dart';
import 'package:benzene_/pages/profilePage.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
          Text('This is your notifications page'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(31, 175, 159, 214),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.house),
                onPressed: ()
                {
                  Navigator.pop(context);
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