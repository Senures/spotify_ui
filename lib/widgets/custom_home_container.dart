import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

customHomeContainer(String url, String description) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: 230.0,
        height: 113.0,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15.0), // color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  url,
                ))),
      ),
      Text(
        description,
        style: TextStyle(color: Colors.white54, fontSize: 11.0),
      )
    ],
  );
}
