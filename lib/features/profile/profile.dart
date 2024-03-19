import 'package:flutter/material.dart';
import '../context/colors.dart';
import './edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notificationsEnabled = false;
  bool locationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellow,
        automaticallyImplyLeading: true,
        title: const Text(
          'Profile',
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
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Edit Profile'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 700,
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
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes the shadow position
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: const Text(
                          'Notifications',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 0), // changes the shadow position
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: Column(
                          children: [
                          
                            SwitchListTile(
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  'Allow Notification',
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: notificationsEnabled,
                                activeColor: Colors.blue,
                                inactiveTrackColor: Colors.white,
                                onChanged: (bool value) {
                                  setState(() {
                                    notificationsEnabled = value;
                                  });
                                }),
                            const Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SwitchListTile(
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  'Location',
                                  style: TextStyle(fontSize: 20),
                                ),
                                activeColor: Colors.blue,
                                inactiveTrackColor: Colors.white,
                                value: locationsEnabled,
                                onChanged: (bool value) {
                                  setState(() {
                                    locationsEnabled = value;
                                  });
                                }),
                            // SizedBox(
                            //   child: Switch(
                            //     value: notificationsEnabled,
                            //     onChanged: () {},
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      // border: Border.all(width: 1),
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
                    width: double.infinity,
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
                      child: const Text(
                        'Log Out',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
