import 'package:flutter/material.dart';
import 'package:food_management_system/features/cart/ui/checkout.dart';
import '../../../context/colors.dart';
import 'checkout.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('My Cart'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CartItem(),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: CheckoutButton(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget CartItem() {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            child: Image.network(
              'https://i.imgur.com/28t6012.jpg',
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                child: const Expanded(
                  child: Text(
                    'PanCake',
                    style: TextStyle(
                        fontSize: 20, overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
              const Text(
                'Rs.300',
                style: TextStyle(fontSize: 18),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Qty.',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CheckoutButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text(
            'Checkout',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
