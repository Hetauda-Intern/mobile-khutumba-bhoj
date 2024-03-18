import 'package:flutter/material.dart';

class FoodDesc extends StatefulWidget {
  const FoodDesc({Key? key}) : super(key: key);

  @override
  State<FoodDesc> createState() => _FoodDescState();
}

class _FoodDescState extends State<FoodDesc> {
  int _quantity = 1;
  double _deliveryCharge = 100.0;
  double _totalPrice = 560.99;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
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
                'My Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                RestaurantCard(
                  logo: 'https://imgur.com/HWiEV7G.png',
                  name: 'Chicken Khana Set',
                  price: 550,
                  deliveryCharge: _deliveryCharge,
                  quantity: _quantity,
                  onQuantityChanged: (newQuantity) {
                    setState(() {
                      _quantity = newQuantity;
                      _updateTotalPrice();
                    });
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  'Total Price: \Rs ${_totalPrice.toStringAsFixed(2)}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Order Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _updateTotalPrice() {
    _totalPrice = (_quantity * 550.99) + _deliveryCharge;
  }
}

class RestaurantCard extends StatelessWidget {
  final String logo;
  final String name;
  final double price;
  final int quantity;
  final double deliveryCharge;
  final ValueChanged<int> onQuantityChanged;

  const RestaurantCard({
    Key? key,
    required this.logo,
    required this.name,
    required this.price,
    required this.quantity,
    required this.deliveryCharge,
    required this.onQuantityChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make the card full width
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.network(
                logo,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 5),
              Text('Price: \Rs ${price.toStringAsFixed(2)}'),
              Text('Quantity: $quantity'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (quantity > 1) {
                        onQuantityChanged(quantity - 1);
                      }
                    },
                    icon: Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: () {
                      onQuantityChanged(quantity + 1);
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
