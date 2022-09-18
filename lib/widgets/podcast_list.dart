import 'package:flutter/material.dart';
import 'package:spotify_ui/model/podcast_model.dart';

class PodcastList extends StatelessWidget {
  const PodcastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
          height: 203.0,
          //color: Colors.red,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: podCastList.length,
            itemBuilder: (context, index) {
              var item = podCastList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                  width: 155.0,
                  decoration: BoxDecoration(
                      color: const Color(0xff0e0e0f),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              // color: Colors.red,
                              ),
                          child: Stack(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                width: 170.0,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Image.asset(
                                  fit: BoxFit.fill,
                                  item.imgUrl,
                                ),
                              ),
                              Positioned(
                                top: 5.0,
                                left: 5.0,
                                child: Image.asset("assets/images/spotify.png"),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          item.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        Text(item.subTitle,
                            style: const TextStyle(
                                color: Colors.white60, fontSize: 12.0))
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
