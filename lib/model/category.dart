class Category {
  final String name;

  final String image;

  const Category({
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      image: json['image'],
    );
  }
}
