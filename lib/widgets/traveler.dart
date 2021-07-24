import 'package:flutter/material.dart';

class Traveler extends StatelessWidget {
  final AssetImage avatarTraveler;
  final String nameTraveler;
  final String likeTraveler;

  const Traveler({
    Key,
    key,
    this.avatarTraveler,
    this.nameTraveler,
    this.likeTraveler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: avatarTraveler,
          radius: 25,
        ),
        SizedBox(height: 5),
        Text(
          '$nameTraveler',
          style: TextStyle(
            color: Color(0xff707070),
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.verified_user_outlined,
              color: Color(0xff707070),
              size: 12,
            ),
            SizedBox(width: 4),
            Text(
              '$likeTraveler',
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
