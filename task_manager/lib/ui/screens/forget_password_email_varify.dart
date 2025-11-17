import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgetPasswordEmailVarify extends StatelessWidget {
  const ForgetPasswordEmailVarify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                Text(
                  'Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 25),
                Text(
                  'A 6 digit OTP will be sent to your email',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(decoration: InputDecoration(hintText: 'Email')),

                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.double_arrow_outlined, size: 30),
                ),

                const SizedBox(height: 35),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      RichText(
                        text: TextSpan(
                          text: "Have account?",
                          children: [
                            TextSpan(
                              text: 'SignIn',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
