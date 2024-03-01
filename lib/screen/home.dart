// import 'package:flutter/gestures.dart';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_management_system/screen/food_categories.dart';
import 'package:food_management_system/screen/restaurants.dart';
import '../context/colors.dart';
import './all_food.dart';
import './profile.dart';
import './restaurant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    const Center(child: Home()),
    const Center(child: AllFood()),
    const Center(child: Home()),
    const Center(child: Home()),
  ];

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
            SizedBox(
              height: 50,
              child: Image.network('https://imgur.com/VWVm9ax.png'),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  // Navigate to a new screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
                child: Image.network('https://imgur.com/XNF5Qjp.png'),
              ),
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
                  exploreFood(),
                  foodCategories(),
                  restaurant(),
                  allFood()
                ]),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: yellow,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
          )
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
            offset: const Offset(0, 1), // changes the shadow position
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
                    // borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    // onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      // prefixIcon: Icon(
                      //   Icons.search,
                      //   color: black,
                      //   size: 20,
                      // ),

                      // prefixIconColor: Color.fromARGB(255, 210, 240, 14),
                      // prefixIconConstraints: BoxConstraints(
                      //   maxHeight: 20,
                      // ),
                      hintText: 'Search your favorite foods...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   width: 5,
          // ),
          Container(
            height: 48,
            padding: const EdgeInsets.all(15),
            color: yellow,
            child: Image.network(
              'https://imgur.com/DYnFgH8.png',
              height: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget exploreFood() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 5),
      child: Column(
        children: [
          const SizedBox(
            child: Row(
              children: [
                Text(
                  'Explore the delicious cuisines !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.network(
              'https://imgur.com/S879gkU.jpg',
              height: 126,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget foodCategories() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Food Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: const Text('view all'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const FoodCategories())),
            )
          ],
        ),
        Container(
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: graybg,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text(
                  'non-Veg',
                  style: TextStyle(color: black, fontSize: 10),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget restaurant() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Restautant',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              height: 98,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  5,
                  (index) => Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Restaurant(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black, // Set the border color
                            // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 46,
                              child: Image.network(
                                  'https://imgur.com/KEiohVU.png'),
                            ),
                            const Text(
                              'Marcopolo Restaurant',
                              style: TextStyle(color: black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget allFood() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  // Set background color of the box
                  borderRadius: BorderRadius.circular(
                      8), // Optional: Set border radius for rounded corners
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print('Login button pressed');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Restaurants()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 5, 91, 161),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('All'),
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                5,
                (index) => Container(
                  height: 66,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 175,
                          child: Image.network(
                            'https://imgur.com/GCg8pZJ.jpg',
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
