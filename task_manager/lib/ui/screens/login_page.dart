import 'package:flutter/material.dart';

import '../widgets/screen_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          children: [
            Text(
              'Get Started With',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextFormField(),
            TextFormField(),
            FilledButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
            Text('Forget Password?'),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "Don't have account?",
                children: [
                  TextSpan(
                    text: 'SignUp',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
