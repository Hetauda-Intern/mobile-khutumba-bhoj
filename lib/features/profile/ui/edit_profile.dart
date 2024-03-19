import 'package:flutter/material.dart';
import '../../../context/colors.dart';
import '../../home/ui/home.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  bool notificationsEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellow,
        automaticallyImplyLeading: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontSize: 36),
        ),
      ),
      body: Container(
        color: yellow,
        child: ListView(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://i.imgur.com/Ojl5wri.png',
                        height: 120,
                        width: 120,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mukesh Bartaula',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '+977 9898989877',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 670,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        'Accounts',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  'My order',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  '>>',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  'Payment Detail',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  '>>',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  'Location ',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text(
                                  'Change Password',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Text(
                                      'Remove Account ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
