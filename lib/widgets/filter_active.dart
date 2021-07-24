import 'package:flutter/material.dart';

class FilterActive extends StatelessWidget {
  final String name;

  const FilterActive({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name',
      style: TextStyle(
        color: Color(0xffF35F42),
        fontSize: 12,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
