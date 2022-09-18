import 'package:flutter/material.dart';

customGradientContainer(
  String name,
  Color color1,
  Color color2,
) {
  return Container(
    width: 160.0,
    height: 90.0,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.0),
        gradient: LinearGradient(
          colors: [color1, color2],
        )),
  );
}
