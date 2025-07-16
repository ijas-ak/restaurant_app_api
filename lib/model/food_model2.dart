class Meat {
  String name;
  String id;
  String image;

  Meat({required this.name, required this.id, required this.image});

  factory Meat.fromJson(Map<String, dynamic> json) {
    return Meat(
      name: json['strCategory'],
      id: json['idCategory'],
      image: json['strCategoryThumb'],
    );
  }

  Map<String, dynamic> toJson() => {
    "strCategory": name,
    "idCategory": id,
    "strCategoryThumb": image,
  };
}
