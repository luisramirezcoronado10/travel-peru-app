import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travel_peru/pages/home.dart';
import 'package:travel_peru/widgets/button_pay.dart';
import 'package:travel_peru/widgets/button_price.dart';
import 'package:travel_peru/widgets/feature-item.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background-machu-picchu.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              navegation(context),
              SizedBox(height: 300),
              place(),
              SizedBox(height: 20),
              features(),
              SizedBox(height: 20),
              description(),
              SizedBox(height: 20),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget navegation(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Icon(Icons.arrow_back, color: Colors.white),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          Icon(Icons.collections_bookmark_outlined, color: Colors.white),
        ],
      ),
    );
  }

  Widget place() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Machu Picchu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.white, size: 16),
              Icon(Icons.star, color: Colors.white, size: 16),
              Icon(Icons.star, color: Colors.white, size: 16),
              Icon(Icons.star, color: Colors.white, size: 16),
              Icon(Icons.star, color: Colors.white, size: 16),
              Text(
                '(2.2k visitas)',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget features() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FeatureItem(titleFeature: 'Temp. Máx.', valueFeature: '20°'),
          FeatureItem(titleFeature: 'Temp. Prom.', valueFeature: '16°'),
          FeatureItem(titleFeature: 'Temp. Min.', valueFeature: '-13°'),
        ],
      ),
    );
  }

  Widget description() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Text(
        'El santuario histórico de Machu Picchu es un área protegida del Perú de más de 35 mil hectáreas que comprende el entorno natural del sitio arqueológico de Machu Picchu, enclavados en la abrupta selva nubo...',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buttons() {
    // aquí irá el boton de precio y el boton de pagar...
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonPrice(),
          ButtonPay(),
        ],
      ),
    );
  }
}
