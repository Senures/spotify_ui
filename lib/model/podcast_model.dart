class PodCastModel {
  final String imgUrl;
  final String title;
  final String subTitle;
  PodCastModel(
      {required this.title, required this.subTitle, required this.imgUrl});
}

List<PodCastModel> podCastList = [
  PodCastModel(
      title: "Impaulsive", subTitle: "334 ep.", imgUrl: "assets/images/a.png"),
  PodCastModel(
      title: "TED Talks Daily",
      subTitle: "155 ep.",
      imgUrl: "assets/images/img2.png"),
  PodCastModel(
      title: "Impaulsive",
      subTitle: "334 ep.",
      imgUrl: "assets/images/img1.png")
];
