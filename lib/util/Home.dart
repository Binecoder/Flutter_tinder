import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:tinder/util/tinder_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: DelayedDisplay(
            delay: Duration(milliseconds: 2),
            child: Column(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/emoji/bine.webp"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Hi,',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Rogan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 30,
                        ))
                  ],
                ),
                TinderCard(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadiusDirectional.circular(50),
                      ),
                      child: ImageIcon(
                        AssetImage("assets/icons/close.png"),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child: Text(
                            "👋",
                            style: TextStyle(fontSize: 38),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
