import 'dart:typed_data';

import 'package:avenir_tech_plc/screens/detail.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';
import '../widget/horizontalwidget.dart';
import '../model/product.dart';
import '../widget/verticalgrid.dart';

class ListItemScreenState extends StatefulWidget {
  const ListItemScreenState({super.key});

  @override
  State<ListItemScreenState> createState() => _ListItemScreenStateState();
}

class _ListItemScreenStateState extends State<ListItemScreenState> {
  List<Cart> products = [
    Cart(name: 'orange', price: 6.7, image: 'assets/fruitsimg/onion.jpg'),
    Cart(name: 'Brocolli', price: 6.7, image: 'assets/fruitsimg/fungi.png'),
    Cart(name: 'Red Onion', price: 6.7, image: 'assets/fruitsimg/onionimg.jpg'),
    Cart(name: 'Banana', price: 6.7, image: 'assets/fruitsimg/banana.png'),
    Cart(name: 'Tomato', price: 6.7, image: 'assets/fruitsimg/tomato.png'),
    Cart(name: 'Potato', price: 6.7, image: 'assets/fruitsimg/potato.png'),
    Cart(name: 'Tklgomen', price: 6.7, image: 'assets/fruitsimg/tklgomen.png'),
  ];

  List<Category> category = [
    Category(
        name: 'assets/catagoryimg/fruitstxt.png',
        image: 'assets/catagoryimg/fruit.png'),
    Category(
        name: 'assets/catagoryimg/vegitabletxt.png',
        image: 'assets/catagoryimg/vegitable.png'),
    Category(
        name: 'assets/catagoryimg/mushroomtxt.png',
        image: 'assets/catagoryimg/mushroom.png'),
    Category(
        name: 'assets/catagoryimg/dairytxt.png',
        image: 'assets/catagoryimg/dairy.png'),
    Category(
        name: 'assets/catagoryimg/oatstxt.png',
        image: 'assets/catagoryimg/oats.png'),
    Category(
        name: 'assets/catagoryimg/breadtxt.png',
        image: 'assets/catagoryimg/bread.png'),
    Category(
        name: 'assets/catagoryimg/ricetxt.png',
        image: 'assets/catagoryimg/rice.png'),
    Category(
        name: 'assets/catagoryimg/eggtxt.png',
        image: 'assets/catagoryimg/egg.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 236, 236),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: const Text(
                'Good Morning',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'REFATUL ISLAM',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: (() {
                      //btn logic
                    }),
                    icon: Icon(Icons.notification_add),
                    color: Color.fromARGB(255, 0, 0, 0),
                    iconSize: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: (() {
                      //btn logic
                    }),
                    icon: Icon(Icons.arrow_forward),
                    color: Color.fromARGB(255, 0, 0, 0),
                    iconSize: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        width: 125,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  category[index].image,
                                  height: 50,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            // Expanded(
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: ClipRRect(
                            //       borderRadius: BorderRadius.circular(12),
                            //       child: Image.asset(
                            //         category[index].name,
                            //         height: 130,
                            //         fit: BoxFit.contain,
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 13,
                      mainAxisSpacing: 13,
                      childAspectRatio: 1),
                  itemCount: products.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: (() {
                                  // logic
                                }),
                                icon: Icon(Icons.favorite),
                                color: Color.fromARGB(255, 255, 0, 0),
                                iconSize: 17,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()),
                            ),
                            child: Container(
                              height: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  products[index].image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            products[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                '\$${products[index].price}',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Add to cart',
                                style: TextStyle(
                                  fontSize: 7.0,
                                  color: Color.fromARGB(255, 197, 75, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
