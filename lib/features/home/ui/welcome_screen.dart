import 'package:flutter/material.dart';
// import 'package:food_management_system/screen/get_started.dart';
import '../../authentication/ui/log_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage('https://i.imgur.com/yfZLWge.png'),
              width: 390,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_forward,
                size: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
