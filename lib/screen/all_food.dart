import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_management_system/screen/food_des.dart';
import './home.dart';

import '../context/colors.dart';

class AllFood extends StatefulWidget {
  const AllFood({super.key});

  @override
  State<AllFood> createState() => _AllFoodState();
}

class _AllFoodState extends State<AllFood> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bg,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: SizedBox(
                height: 50,
                child: Image.network('https://imgur.com/F9quUPN.png'),
              ),
            ),
            SizedBox(
              height: 50,
              child: Image.network('https://imgur.com/XNF5Qjp.png'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Column(children: [
                  searchBox(),
                  restaurant(),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 1), // changes the shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.all(15),
            color: yellow,
            child: Image.network(
              'https://imgur.com/OfelT5c.png',
              height: 10,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: 'Search your favorite foods...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 48,
            padding: const EdgeInsets.all(15),
            color: yellow,
            child: Image.asset(
              'https://imgur.com/DYnFgH8.png',
              height: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget restaurant() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 700,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                7,
                (index) => Container(
                  height: 60,
                  width: 120,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black, // Set the border color
                      // Set the border width
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const FoodDes())),
                          child: SizedBox(
                            height: 70,
                            width: 175,
                            child: Image.network(
                              'https://imgur.com/HWiEV7G.png',
                              width: 175,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Fruit Pancake',
                                style: TextStyle(fontSize: 13),
                              ),
                              const Text(
                                'Rs. 500',
                                style: TextStyle(fontSize: 13),
                              ),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 13,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            // Handle rating changes
                                            print(rating);
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: const SizedBox(
                                        child: Icon(Icons.favorite, size: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
