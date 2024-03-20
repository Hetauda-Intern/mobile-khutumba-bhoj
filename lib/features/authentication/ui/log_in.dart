import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/authentication_bloc.dart';
import 'sign_up_page.dart';
import '../../home/ui/get_started.dart';

import '../../../context/colors.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final AuthenticationBloc authenticationBloc = AuthenticationBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      bloc: authenticationBloc,
      listenWhen: (previous, current) => current is AuthenticationState,
      buildWhen: (previous, current) => context is! AuthenticationActionState,
      listener: (context, state) {
        if (state is AuthenticationNavigateToSingUpPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpPage()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: yellow,
          // appBar: AppBar(),
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    child: Image.network('https://i.imgur.com/yfZLWge.png'),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                child: Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                          horizontal: 5, vertical: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Add your link's tap logic here
                                      print('Forgot password link tapped');
                                    },
                                    child: const Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                        color: Colors.red,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  authenticationBloc.add(
                                      AuthenticationLogInButtonNavigateEvent());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 91, 161),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text('Log In'),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: const Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'or',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Lfacebook');
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      child: Image.network(
                                          'https://i.imgur.com/oUY8m32.png'),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    const Text('Continue with FaceBook'),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('google');
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      child: Image.network(
                                          'https://i.imgur.com/lOvSjxm.png'),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text('Continue with Google'),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                    text: "Don't have an account? ",
                                    style: const TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: 'Sign up',
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 6, 134, 238),
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            authenticationBloc.add(
                                                AuthenticationSignUpNavigateEvent());
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
