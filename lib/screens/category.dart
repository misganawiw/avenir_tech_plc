import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 13,
                    childAspectRatio: 1),
                itemCount: category.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                category[index].image,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  category[index].name,
                                  height: 80,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
