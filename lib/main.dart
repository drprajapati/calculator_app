import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: new ThemeData(
        backgroundColor: Colors.purple,
        accentColor: Colors.white,
        primaryColor: Colors.purple,
        cursorColor: Colors.purple,
        hintColor: Colors.purple,
      ),
      home: new HomePage(),
    );
  }
}
