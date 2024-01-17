import 'package:benzene_/pages/homeScreen.dart';
import 'package:benzene_/pages/leaderboard.dart';
import 'package:benzene_/pages/notifications.dart';
import 'package:flutter/material.dart';


class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 520.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
          ),
          Positioned(
            top: 120,
            left: 80,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8, color: Colors.black54, spreadRadius: 5)
                  ]),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Positioned(
              top: 400,
              left: 20,
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        child: SizedBox(
                          width: 150,
                          height: 50,
                          
                        ),
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        child: SizedBox(
                          width: 150,
                          height: 50,
                        ),
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                        child: SizedBox(
                          width: 150,
                          height: 50,
                        ),
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        child: SizedBox(
                          width: 150,
                          height: 50,
                        ),
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 25,
                  ),
                  Row(children: [
                    Card(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                      ),

                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                      ),
                      color: Colors.red,
                    )
                  ],),
                 Row(children: [
                    Card(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                      ),

                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Card(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                      ),
                      color: Colors.red,
                    )
                  ],),
                ],
              ))
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
