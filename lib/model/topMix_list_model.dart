import 'package:flutter/animation.dart';

class TopMixModel {
  final String imgUrl;
  final String title;
  final String subTitle;
  final Color color;
  TopMixModel(
      {required this.title,
      required this.subTitle,
      required this.imgUrl,
      required this.color});
}

List<TopMixModel> topMixList = [
  TopMixModel(
      title: "Hip Hop Mix",
      subTitle: "Juice Wrld, Drake, Kendrick lamar and more...",
      imgUrl: "assets/images/top1.png",
      color: const Color(0xffEF0CAF)),
  TopMixModel(
      title: "Moody Mix",
      subTitle: "Joji, The Kid LAROI, Tate McRae and more...",
      imgUrl: "assets/images/top2.png",
      color:const Color(0xffFFFF00)),
  TopMixModel(
      title: "House Mix",
      subTitle: "Martin Garrix, The Chainsmoker and more...",
      imgUrl: "assets/images/top3.png",
      color:const Color(0xff1ED760)),
];
