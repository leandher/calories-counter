import 'package:flutter/material.dart';
import 'package:mobile/pages/home/home_module.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorDark: Color(0xFF18191F),
      ),
      home: HomeModule(),
    );
  }
}
