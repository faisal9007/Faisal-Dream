import 'package:flutter/material.dart';

import '../widgets/screen_background.dart';
import 'forget_password_email_varify.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    void _onTapForgetPassword (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordEmailVarify()));
    }
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150,),
                Text(
                  'Get Started With',
                  style: Theme.of(context).textTheme.titleLarge
                ),
                const SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 20,),
               FilledButton(
                    onPressed: () {},
                    child: Icon(Icons.double_arrow_outlined,
                    size: 30,
                    ),
                  ),
            
                const SizedBox(height: 35,),
                Center(
                  child: Column(
                    children: [
                      TextButton(onPressed: (){_onTapForgetPassword();}, child: Text('Forget Password?'),),
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
                )
            
              ],
            ),
          ),
        ),
      ),
    );

  }
}
