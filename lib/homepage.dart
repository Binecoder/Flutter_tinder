// ignore_for_file: prefer_const_constructors
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:tinder/tinderscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DelayedDisplay(
          delay: Duration(milliseconds: 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: const [
                    Text(
                      'META',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(
                      'MATCH',
                      style: TextStyle(fontSize: 23),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage(
                      "assets/emoji/75d53043542595f70dcaf7dd1cf94f89.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 80,
                ),
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/emoji/sara.jpg"),
                ),
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/emoji/bine.webp"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Find your',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'fist',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'meta',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'matches.',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Join us and socialize with millions',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'of meta humas',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TinderScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: const [
                            Text(
                              "Get started",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.apple,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.facebook,
                        size: 40,
                        color: Colors.blue,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
