import 'package:flutter/material.dart';
import 'package:food_management_system/screen/selected_category_food.dart';

class FoodCategories extends StatefulWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  _FoodCategoriesState createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.all(5),
            child: const Center(
              child: Text(
                'Food Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              padding: const EdgeInsets.all(5.0),
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const SellectedCategoryFood())),
                  child: const RestaurantCard(
                    logo: 'https://i.imgur.com/42h9Q55.png',
                    name: 'Non-Veg',
                  ),
                ),
                const RestaurantCard(
                  logo: 'https://i.imgur.com/3BZbjCK.png',
                  name: 'Veg',
                ),
                const RestaurantCard(
                  logo: 'https://i.imgur.com/rmUF2lk.png',
                  name: 'Mo:Mo',
                ),
                const RestaurantCard(
                  logo: 'https://i.imgur.com/s9zRf0P.png',
                  name: 'Pizza',
                ),
                const RestaurantCard(
                  logo: 'https://i.imgur.com/0RZyvsd.png',
                  name: 'Korean',
                ),
                const RestaurantCard(
                  logo: 'https://i.imgur.com/Eppc9ts.png',
                  name: 'Sweets',
                ),
              ],
            ),
          ),
        ],
      ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.black,
      //     onTap: (int index) {
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.inbox),
      //         label: 'Inbox',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_cart),
      //         label: 'Cart',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle),
      //         label: 'Account',
      //       ),
      //     ],
      //   ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String logo;
  final String name;

  const RestaurantCard({
    Key? key,
    required this.logo,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(8),
      child: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
