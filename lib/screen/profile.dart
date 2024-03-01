import 'package:flutter/material.dart';
import '../context/colors.dart';
import './home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      // appBar: AppBar(),
      body:
          // Stack(children: [
          //   Positioned(
          //     bottom: 0,
          // child:
          Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white),
            height: 550,
            width: double.infinity,
            child: Column(children: [
              Container(
                width: 150,
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 217, 217, 217),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Container(
                      child: Image.network(
                        'https://imgur.com/XNF5Qjp.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'data',
                            style: TextStyle(backgroundColor: Colors.red),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      //   ),
      // ]),
    );
  }
}
