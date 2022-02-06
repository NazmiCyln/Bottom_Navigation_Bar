import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_bar/home_page.dart';
import 'package:navigation_bar/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageB(),
    );
  }
}
