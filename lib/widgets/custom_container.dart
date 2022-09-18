import 'package:flutter/material.dart';

customContainer(String text, double width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Color(0xff0e0e0f)),
      width: width,
      height: 45.0,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12.0),
      ),
    ),
  );
}
