import 'package:flutter/material.dart';
import 'package:travel_peru/widgets/card_place.dart';
import 'package:travel_peru/widgets/filter.dart';
import 'package:travel_peru/widgets/filter_active.dart';
import 'package:travel_peru/widgets/traveler.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            navbar(),
            SizedBox(height: 25),
            messageWelcome(),
            SizedBox(height: 30),
            search(),
            SizedBox(height: 20),
            filters(),
            SizedBox(height: 25),
            placeCard(),
            SizedBox(height: 25),
            travellers(),
          ],
        ),
      ),
    );
  }

  Widget navbar() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 36, right: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user-avatar.png'),
            radius: 17.5,
          )
        ],
      ),
    );
  }

  Widget messageWelcome() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      width: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hola Leonardo',
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 28,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Encuentra los mejores destinos para ti.',
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 36),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffABABAB)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 12),
          Text(
            'Buscar lugar',
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  Widget filters() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterActive(name: 'Todos'),
          Filter(name: 'Nuevos'),
          Filter(name: 'Populares'),
          Filter(name: 'Top 10'),
        ],
      ),
    );
  }

  Widget placeCard() {
    return Container(
      margin: const EdgeInsets.only(left: 36),
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardPlace(
            imagePlace: AssetImage('assets/images/machu-picchu.png'),
            place: 'Machu \nPicchu',
            addres: 'Cuzco, Perú',
            points: '4.9',
          ),
          SizedBox(width: 18),
          CardPlace(
            imagePlace: AssetImage('assets/images/montana-colores.png'),
            place: 'Montaña de \nSiete colores',
            addres: 'Cuzco, Perú',
            points: '4.8',
          ),
        ],
      ),
    );
  }

  Widget travellers() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Viajeros populares',
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ver todos',
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Traveler(
                  avatarTraveler:
                      AssetImage('assets/images/avatar-travel-1.png'),
                  nameTraveler: 'Smith Coronado',
                  likeTraveler: '2.5k',
                ),
                SizedBox(width: 20),
                Traveler(
                  avatarTraveler:
                      AssetImage('assets/images/avatar-travel-2.png'),
                  nameTraveler: 'Luis Ramirez',
                  likeTraveler: '2.1k',
                ),
                SizedBox(width: 20),
                Traveler(
                  avatarTraveler:
                      AssetImage('assets/images/avatar-travel-3.png'),
                  nameTraveler: 'Jean Mateo',
                  likeTraveler: '1.5k',
                ),
                SizedBox(width: 20),
                Traveler(
                  avatarTraveler:
                      AssetImage('assets/images/avatar-travel-1.png'),
                  nameTraveler: 'Smith Coronado',
                  likeTraveler: '2.5k',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
