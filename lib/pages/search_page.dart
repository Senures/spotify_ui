import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/customGradientContainer.dart';
import 'package:spotify_ui/widgets/custom_container.dart';
import 'package:spotify_ui/widgets/custom_title.dart';
import 'package:spotify_ui/widgets/podcast_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTitle("Search", Icons.more_vert, context),
          /*  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.14,
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                  Icon(
                    Icons.more_vert,
                    size: 30.0,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ), */
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  color: const Color(0xff0e0e0f),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/search.png"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      "Artist,songs,or podcasts",
                      style: TextStyle(color: Colors.white24),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                customContainer("The Kid LAROI", 102.0),
                customContainer("Drake", 65.0),
                customContainer("Justin Bieber", 102.0),
                customContainer("Joji", 45.0),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              children: [
                customContainer("Hip Hop", 112.0),
                customContainer("Pop", 112.0),
                customContainer("Top-Hits", 104.0),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text("Podcast's",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0)),
          ),
          const PodcastList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text("Browse all",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                customGradientContainer(
                  "Made For you",
                  Color(0xffE02FCF),
                  Color(0xff00C188),
                ),
                SizedBox(
                  width: 15.0,
                ),
                customGradientContainer(
                  "Charts",
                  Color(0xff0A3CEC),
                  Color(0xff4DD4AC),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Row(
              children: [
                customGradientContainer(
                  "Discover",
                  Color(0xff0A3CEC),
                  Color(0xffD9DD01),
                ),
                SizedBox(
                  width: 15.0,
                ),
                customGradientContainer(
                  "New Release",
                  Color(0xff0E31AE),
                  Color(0xffDD1010),
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
