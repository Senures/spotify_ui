import 'package:flutter/material.dart';

customTitle(String title, IconData icon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.14,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          )
        ],
      ),
    ),
  );
}
