import 'package:flutter/material.dart';

class ButtonPrice extends StatelessWidget {
  const ButtonPrice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            's/ 1,500',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(width: 10),
          Text(
            '(7 días)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
