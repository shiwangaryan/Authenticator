import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_authentication/components/sigin_button.dart';
import 'package:flutter_authentication/components/square_tile.dart';
import 'package:flutter_authentication/components/textfields.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordconfirmController = TextEditingController();

  //function to sign in the user
  void signUserUp(BuildContext context) async {
    int flag = 0;
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      flag = 1;
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Wrong Credentials!',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              "Let's create an account for you!",
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

            //confirm passowrd
            MyTextFields(
              hint: 'Re-enter password *',
              obscureText: true,
              controller: passwordconfirmController,
            ),
            const SizedBox(height: 30),

            //sigin button
            SigninButton(
              title: 'Sign Up',
              onTap: () => signUserUp(context),
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

            //already a member? sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 5),
                const Text(
                  'Login now',
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
