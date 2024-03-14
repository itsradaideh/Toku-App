import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';

void main() {
  runApp(const TocuApp());
}

class TocuApp extends StatelessWidget {
  const TocuApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}