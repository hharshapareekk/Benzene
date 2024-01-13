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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
        )),
        backgroundColor: Color.fromARGB(31, 175, 159, 214),
        title: Center(
          child: Text("Harsha's App"),
        ),
      ),
      body: Column(
        children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Card(
                  child: SizedBox(
                    width: 600,
                    height:140,
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                decoration: BoxDecoration(),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: SizedBox(
                  width: 600,
                  height:140,
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: SizedBox(
                  width: 600,
                  height:140,
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
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
