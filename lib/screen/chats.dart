import 'package:flutter/material.dart';
import './message.dart';
import 'package:food_management_system/screen/restaurant.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
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
                      color: Colors.yellow,
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
                      color: Colors.yellow,
                      child: Image.network(
                        'https://i.imgur.com/kCGpyTU.png',
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue, // Placeholder color
                    child: Icon(Icons.person), // Placeholder icon
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe', // User's name
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Hey there! How can I help you?', // Demo message
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '10:30 AM', // Time
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
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
