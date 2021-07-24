import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String name;

  const Filter({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name',
      style: TextStyle(
        color: Color(0xff707070),
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
