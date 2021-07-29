import 'package:flutter/material.dart';

class ButtonPay extends StatelessWidget {
  const ButtonPay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 140,
      decoration: BoxDecoration(
          color: Color(0xffF35F42),
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: Center(
        child: Text(
          'Comprar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
