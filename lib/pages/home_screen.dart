import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_authentication/components/sigin_button.dart';
import 'package:flutter_authentication/components/square_tile.dart';
import 'package:flutter_authentication/components/textfields.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //function to sign in the user
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            const Icon(
              Icons.lock,
              size: 80,
            ),

            const SizedBox(height: 50),

            //welcome back!
            Text(
              'Welcome Back! You have been missed',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),

            //username textfield
            MyTextFields(
              hint: 'Username *',
              obscureText: false,
              controller: usernameController,
            ),
            const SizedBox(height: 12),

            //password textfield
            MyTextFields(
              hint: 'Password *',
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 8),

            //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //sigin button
            SigninButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 40),

            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),

            //google and apple button
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTIle(imagePath: 'assets/images/google-logo.png'),
                SizedBox(width: 25),
                SquareTIle(imagePath: 'assets/images/apple-logo.png'),
              ],
            ),
            const SizedBox(height: 40),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 5),
                const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
