class ArtistModel {
  final String imgUrl;
  final String name;

  ArtistModel(
      { required this.imgUrl,required this.name});
}

List<ArtistModel> artistList = [
  ArtistModel(
     imgUrl: "assets/images/artist1.png",
     name:"The Kid LAROI"),
  ArtistModel(
     
      imgUrl: "assets/images/artist2.png",name: "Taylor Swift",),
  ArtistModel(
      
      imgUrl: "assets/images/artist3.png",name: "Post Malone",)
];
