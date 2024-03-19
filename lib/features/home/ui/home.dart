import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_management_system/features/restaurant/ui/restaurant_category.dart';
import '../../../context/colors.dart';
import '../../cart/ui/checkout.dart';
import '../../food/ui/selected_category_food.dart';
import '../../profile/ui/profile.dart';
import '../../restaurant/ui/restaurant.dart';
import '../../chat/ui/chats.dart';
import '../../food/ui/food_categories.dart';
import '../../cart/ui/my_carts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    const HomePage(),
    const Chats(),
    const MyCart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: tabs[_currentIndex],
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
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bg,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              child: Image.network('https://i.imgur.com/yfZLWge.png'),
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
                      builder: (context) => Profile(),
                    ),
                  );
                },
                child: Image.network('https://i.imgur.com/Ojl5wri.png'),
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
                  allFood(),
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
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const Cart(),
              //   ),
              // );
            },
            child: Container(
              height: 48,
              padding: const EdgeInsets.all(15),
              color: yellow,
              child: Image.network(
                'https://i.imgur.com/kCGpyTU.png',
                height: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget exploreFood() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 15),
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
          Image.network(
            'https://i.imgur.com/ULweFpA.jpg',
            height: 126,
            width: double.infinity,
            fit: BoxFit.cover,
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {
                  print('Login button pressed');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodCategories()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bg,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('view all'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 110,
          padding: const EdgeInsets.all(5),
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
                        builder: (context) => SellectedCategoryFood(),
                      ),
                    );
                  },
                  child: Container(
                    height: 90,
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black, // Set the border color
                        // Set the border width
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          'https://i.imgur.com/42h9Q55.png',
                          height: 62,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          'Non Veg',
                          style: TextStyle(color: black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget restaurant() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Restautant',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print(' button pressed');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Restaurants()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bg,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('view all'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
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
                          builder: (context) => Restaurant(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
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
                          SizedBox(
                            height: 46,
                            child: Image.network(
                                'https://i.imgur.com/qNsRBeB.png'),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget allFood() {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(children: [
                Text(
                  'Hot deal',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: Icon(Icons.local_fire_department, size: 20),
                )
              ]),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print(' button pressed');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyCart()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bg,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('view all'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 163,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                5,
                (index) => Container(
                  height: 120,
                  width: 160,
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
                                    Center(
                                      child: RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 13,
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          // Handle rating changes
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      child: Icon(Icons.favorite, size: 13),
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
