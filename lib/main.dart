import 'package:flutter/material.dart';
import 'package:nubank/pages/home/home_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[800],
            )),
      ),
      home: HomePages(),
    );
  }
}
