// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:tinder/util/Home.dart';
import 'package:tinder/util/profile.dart';
import 'package:tinder/util/tinder_card.dart';

class TinderScreen extends StatefulWidget {
  const TinderScreen({super.key});

  @override
  State<TinderScreen> createState() => _TinderScreenState();
}

class _TinderScreenState extends State<TinderScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [
    Home(),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('like'),
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icons/card.png",
                ),
                color: Color.fromARGB(255, 124, 124, 124),
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icons/messages.png",
                ),
                color: Color.fromARGB(255, 124, 124, 124),
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icons/heart.png",
                ),
                color: Color.fromARGB(255, 124, 124, 124),
                size: 25,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icons/user-2.png",
                ),
                color: Color.fromARGB(255, 124, 124, 124),
                size: 25,
              ),
              label: ''),
        ],
      ),
    );
  }
}
