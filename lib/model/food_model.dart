class Food {
  String title;
  String image;
  int id;

  Food({required this.title, required this.image, required this.id});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(title: json['title'], image: json['image'], id: json['id']);
  }

  Map<String, dynamic> toJson() => {'title': title, 'image': image, 'id': id};
}
