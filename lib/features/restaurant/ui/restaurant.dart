import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../home/ui/home.dart';

import '../../../context/colors.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: bg,
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
            offset: const Offset(0, 1),
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
              'https://i.imgur.com/l05wZzv.png',
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
            child: Image.network(
              'https://i.imgur.com/kCGpyTU.png',
              height: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget restaurant() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Center(
                    child: Text(
                      'Marcopolo Restaurant',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 700,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                7,
                (index) => Container(
                  height: 66,
                  width: 120,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 175,
                          child: Image.network(
                            'https://i.imgur.com/28t6012.jpg',
                            width: 175,
                            height: 70,
                            fit: BoxFit.cover,
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
