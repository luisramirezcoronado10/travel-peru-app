import 'package:flutter/material.dart';
//import 'package:travel_peru/pages/home.dart';
import 'package:travel_peru/pages/place_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Peru Demo',
      home: PlaceDetail(),
    );
  }
}
