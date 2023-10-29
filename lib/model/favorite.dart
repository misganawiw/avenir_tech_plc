class Favorite {
  // final String id;
  final String name;
  final double price;
  final String image;
  // final String addtocart;

  const Favorite({
    // required this.id,
    required this.name,
    required this.price,
    required this.image,
    // required this.addtocart,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(
      // id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      // addtocart: json['addtocart'],
    );
  }
}
