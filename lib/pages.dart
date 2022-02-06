import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';

class PageB extends StatefulWidget {
  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  int seciliSayfa = 0;

  List safyaGoster = [
    Text("Sayfa 1"),
    Text("Sayfa 2"),
    Text("Sayfa 3"),
    Text("Sayfa 4"),
  ];

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: safyaGoster[seciliSayfa],
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: seciliSayfa,
        circleColor: Colors.blueGrey,
        activeIconColor: Colors.tealAccent[200],
        inactiveIconColor: Colors.yellowAccent[400],
        itemTextOff: 1.1,
        itemTextOn: 1.1,
        circleOutline: -8,
        barHeight: 58,
        textColor: Colors.white,
        barBackgroundColor: Colors.blueGrey,
        onTabChangedListener: (index) => sayfaDegistir(index),
        tabs: [
          _navigationBar(Icons.arrow_back, "Geri"),
          _navigationBar(Icons.home, "Ana Sayfa"),
          _navigationBar(Icons.zoom_in, "Yakınlaştır"),
          _navigationBar(Icons.zoom_out, "Uzaklaştır"),
        ],
      ),
    );
  }

  TabData _navigationBar(IconData navigationIcon, String navigatonText) {
    return TabData(
      icon: navigationIcon,
      title: navigatonText,
    );
  }
}
