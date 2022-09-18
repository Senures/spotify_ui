import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/artist_list.dart';
import 'package:spotify_ui/widgets/custom_home_container.dart';
import 'package:spotify_ui/widgets/custom_title.dart';
import 'package:spotify_ui/widgets/podcast_list.dart';
import 'package:spotify_ui/widgets/top_mix_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTitle("Good Morning", Icons.more_vert, context),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 10.0,
              ),
              child: Container(
                width: 200.0,
                height: 50.0,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/simsek.png"),
                    Container(
                      width: 140.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Weekly",
                            style: TextStyle(
                                letterSpacing: 0.5,
                                color: Color(0xff1ED760),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Music",
                            style: TextStyle(
                                letterSpacing: 0.5,
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 160.0,
                //color: Colors.red,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    customHomeContainer("assets/images/one.png",
                        "30 Fresh music for you every week"),
                    customHomeContainer("assets/images/new.png",
                        "New songs music for you every week fgv")
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text("Your Top Mixes",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0)),
            ),
            const TopMixList(),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              child: Text("Suggested artists",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0)),
            ),
            ArtistList()
          ],
        ),
      ),
    );
  }
}
