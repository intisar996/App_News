import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BBC',
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}
