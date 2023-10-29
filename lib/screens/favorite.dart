import 'package:flutter/material.dart';

import '../model/favorite.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Favorite> favdata = [
    Favorite(name: 'orange', price: 6.7, image: 'assets/fruitsimg/onion.jpg'),
    Favorite(name: 'Brocolli', price: 6.7, image: 'assets/fruitsimg/fungi.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Favorites',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: favdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          favdata[index].image,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                favdata[index].name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '\$${favdata[index].price}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                onPressed: (() {
                                  // btn logic
                                }),
                                icon: Icon(Icons.favorite),
                                color: Color.fromARGB(255, 255, 0, 0),
                                iconSize: 16,
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {
                                    //    btn logic
                                  },
                                  child: Text('Add to cart')),
                            ]),
                      ]);
                }),
          ],
        ),
      ),
    );
  }
}
