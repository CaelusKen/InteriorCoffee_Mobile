import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({superkey});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
           Container(
            decoration: BoxDecoration(
              image : DecorationImage(image: AssetImage("lib/images/backgroud.jpg"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}