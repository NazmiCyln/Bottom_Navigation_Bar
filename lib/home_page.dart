import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  @override
  _PageAState createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  List sayfaGoster = [
    Page(
      deger: 1,
    ),
    Page(
      deger: 2,
    ),
    Page(
      deger: 3,
    ),
    Page(
      deger: 4,
    ),
  ];

  int seciliSayfa = 0;

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: sayfaGoster[seciliSayfa],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: seciliSayfa,
        selectedItemColor: Colors.amber[300],
        onTap: sayfaDegistir,
        unselectedItemColor: Colors.lime[100],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Geri",
            backgroundColor: Color(0xFF3A4E5C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Menü",
            backgroundColor: Color(0xFF1A455F),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_in),
            label: "Yakınlaştır",
            backgroundColor: Color(0xFF09545A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_out),
            label: "Uzaklaştır",
            backgroundColor: Color(0xFF39364B),
          ),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  int deger;

  Page({required this.deger});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          deger == 1
              ? "1. Sayfa"
              : deger == 2
              ? "2. Sayfa"
              : deger == 3
              ? "3. Sayfa"
              : "4. Sayfa",
        ),
      ),
    );
  }


}
