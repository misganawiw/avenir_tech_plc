class Cart {
  // final String id;
  final String name;
  final double price;
  final String image;
  // final String addtocart;

  const Cart({
    // required this.id,
    required this.name,
    required this.price,
    required this.image,
    // required this.addtocart,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      // id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      // addtocart: json['addtocart'],
    );
  }
}
