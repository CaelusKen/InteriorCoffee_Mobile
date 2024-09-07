import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({superkey});
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image : new DecorationImage(image: new AssetImage("lib/images/backgroud.jpg"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}