import 'package:flutter/material.dart';
import 'package:interior_coffee/components/login_form.dart';
import 'package:interior_coffee/components/login_option.dart';
import 'package:interior_coffee/components/primary_button.dart';
import 'package:interior_coffee/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(
                  height: 100,
                ),
                Text('Welcome Back', style: titleText),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text('Not a User?', style: subTitle),
                    SizedBox(
                      width: 5,
                    ),
                    Text('SIGN UP',
                        style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFFF6F2CB),
                          decorationThickness: 1,
                        )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                //login form
                LoginForm(),

                SizedBox(
                  height: 25,
                ),
                //Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot password',
                    style: TextStyle(
                        color: Color(0xFFF6F2CB),
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFF6F2CB),
                        decorationThickness: 1)),
                ),
              
                SizedBox(height: 40),
                PrimaryButton(
                  buttonText: 'Sign In',
                ),

                SizedBox(height: 40),
                //Or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(thickness: 0.5, color: kPrimaryColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                      Expanded(
                        child: Divider(thickness: 0.5, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                //login with google
                LoginOption(),
              ],
            ),
          ),
        ));
  }
}
