import 'package:flutter/material.dart';
import 'package:interior_coffee/components/login_option.dart';
import 'package:interior_coffee/components/my_button.dart';
import 'package:interior_coffee/components/my_textfield.dart';
import 'package:interior_coffee/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key}); // Fixed typo

  //text edit controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //welcome back
                const SizedBox(height: 100),
                Text('Welcome back!\nPlease login below',
                    style: TextStyle(
                      color: Colors.amber[50],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),

                const SizedBox(height: 50),
                //username textfiend
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 25),
                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 15),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                //sign in button
                MyButton(),

                const SizedBox(height: 50),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.amber.shade50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.amber.shade50,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),
                //gmail button
                LoginOption(),
                //register button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
