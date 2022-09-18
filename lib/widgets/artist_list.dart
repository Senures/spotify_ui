import 'package:flutter/material.dart';
import 'package:spotify_ui/model/artist_model.dart';

class ArtistList extends StatelessWidget {
  const ArtistList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 200.0,
      //color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: artistList.length,
        itemBuilder: (context, index) {
          var item = artistList[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Container(
                width: 165.0,
                decoration: BoxDecoration(
                    color: const Color(0xff0e0e0f),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(item.imgUrl),
                    Text(
                      item.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
