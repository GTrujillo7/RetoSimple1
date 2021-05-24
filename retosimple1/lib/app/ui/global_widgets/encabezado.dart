import 'package:flutter/material.dart';

class EncabezadoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Image.network(
            "https://cdn.onlinewebfonts.com/svg/img_456589.png",
            alignment: Alignment.centerLeft,
            width: 35,
          ),
          Text(
            "CashApp",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              letterSpacing: 2,
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
