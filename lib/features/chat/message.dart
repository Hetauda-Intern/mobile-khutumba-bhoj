import 'package:flutter/material.dart';
import '../context/colors.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final _todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: bg,
      ),
      backgroundColor: bg,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: name(),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Message(),
          )
        ],
      ),
    );
  }

  Widget name() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 1,
                    blurRadius: 3,
                    color: Colors.grey,
                    offset: Offset(0, 1),
                  ),
                  // borderRadius: BorderRadius.circular(20),
                ],
              ),
              child: Row(
                children: [
                  Image.network(
                    'https://i.imgur.com/Ojl5wri.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Message() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(children: [
        const Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(2),
          child: Row(
            children: [
              Container(
                width: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Icon(Icons.attach_file),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Icon(Icons.camera_alt),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Icon(Icons.mic),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _todoController,
                    decoration: const InputDecoration(
                        hintText: 'Message', border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
