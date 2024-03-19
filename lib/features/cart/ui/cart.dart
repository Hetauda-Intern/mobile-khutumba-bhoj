import 'package:flutter/material.dart';
import '../../../context/colors.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          title: const Text('CheckOut'),
        ),
        body: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: ListView(
            children: [
              SizedBox(
                height: 122,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        'https://imgur.com/GCg8pZJ.jpg',
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PanCake',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'Rs.300',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          'Qty.',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: bg,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Order Summary',
                          style: TextStyle(fontSize: 32),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 30, horizontal: 10),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Item Total',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'Rs.750',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery fee',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'Rs.75',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tex and Vat',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'Rs.0',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Payment',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'Rs.825',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Esewa/Khalti'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Debit/Credit Card'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Cash on Delivery'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Image.network(
                                  'https://imgur.com/qBE8uBr.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Scan',
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
