// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TinderCard extends StatefulWidget {
  const TinderCard({super.key});

  @override
  State<TinderCard> createState() => _TinderCardState();
}

class _TinderCardState extends State<TinderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/emoji/girl.webp'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.video_call,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.videocam_off)),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.headphones,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 25),
            child: Text(
              'Sara,',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 108),
            child: Text(
              '22',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 25),
            child: Text(
              'New York, United State',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
