import 'package:flutter/material.dart';
import 'package:phone_book_app/screens/home_screen.dart';
import 'package:phone_book_app/utils/network.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Network.getData() ;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}