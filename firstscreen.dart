import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:galleryimage_app/secondscreen.dart';

import 'home.dart';
// import 'Home.dart';
// import 'Weather.dart';
// import 'Food.dart';
class firstscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [Secondscreen(), Text("Second"), Text("Third"), Text("Fourth")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation
        (
        circleColor: Color(0xFF6A1B9A),
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.person, title: "Profile"),
          TabData(iconData: Icons.help, title: "Help"),
          TabData(iconData: Icons.settings, title: "Settings")
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}