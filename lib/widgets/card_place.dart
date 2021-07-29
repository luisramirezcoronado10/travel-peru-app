import 'package:flutter/material.dart';
import 'package:travel_peru/pages/place_detail.dart';

class CardPlace extends StatelessWidget {
  final AssetImage imagePlace;
  final String place;
  final String addres;
  final String points;

  const CardPlace({
    Key key,
    this.imagePlace,
    this.place,
    this.points,
    this.addres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 260,
        width: 186,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            //image: AssetImage('assets/images/machu-picchu.png'),
            image: imagePlace,
            fit: BoxFit.cover,
          ),
        ),
        child: info(),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlaceDetail(),
          ),
        );
      },
    );
  }

  Widget info() {
    return Container(
      margin: const EdgeInsets.only(top: 185, left: 13, right: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$place',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
              Text(
                '$addres',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              rating()
            ],
          )
        ],
      ),
    );
  }

  Widget rating() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      width: 55,
      height: 26,
      decoration: BoxDecoration(
        color: Color(0xffF35F42),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.star_outline,
            color: Colors.white,
            size: 18,
          ),
          Text(
            '$points',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
