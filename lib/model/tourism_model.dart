class TourismResult{
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaces,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaces;

  factory TourismResult.fromJson(Map<String, dynamic>json) => TourismResult(
    status: json["status"],
    totalResults: json["totalResults"],
    tourismPlaces: List<TourismPlace>.from((json["tourismPlaces"] as List).map((x) => TourismPlace.fromJson(x)).where((article) =>
      article.name != null &&
      article.deskripsi != null &&
      article.kalender != null &&
      article.clock != null &&
      article.price != null &&
      article.imageAsset != null &&
      article.location != null)),
  );
}

class TourismPlace  {
  String name;
  String location;
  String imageAsset;
  String kalender;
  String clock;
  String price;
  String deskripsi;
  String imageAsset2;
  String imageAsset3;
  String imageAsset4;
  String imageAsset5;

  TourismPlace ({
    required this.name,
    required this.location,
    required this.deskripsi,
    required this.kalender,
    required this.clock,
    required this.price,
    required this.imageAsset,
    required this.imageAsset2,
    required this.imageAsset3,
    required this.imageAsset4,
    required this.imageAsset5,
  });
  

  factory TourismPlace .fromJson(Map<String, dynamic> json) => TourismPlace (
    name: json["name"],
    location: json["location"],
    deskripsi: json["deskripsi"],
    kalender: json["kalender"],
    clock: json["clock"],
    price: json["price"],
    imageAsset: json["imageAsset"],
    imageAsset2: json['imageAsset2'],
    imageAsset3: json['imageAsset3'],
    imageAsset4: json['imageAsset4'],
    imageAsset5: json['imageAsset5']);
}