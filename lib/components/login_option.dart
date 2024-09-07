import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(iconImage: Image(
          height: 35,
          width: 40,
          image : AssetImage('lib/images/signup.png'),
          ),
          textButton : 'Register',
          ),
        BuildButton(iconImage: Image(
          height: 30,
          width: 60,
          image: AssetImage('lib/images/google.png'),
          ),
          textButton: 'Google',
          ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {

  final Image iconImage;
  final String textButton;

  BuildButton({required this.iconImage, required this.textButton});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
      border: Border.all(color: Colors.amber.shade50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        iconImage,
        SizedBox(width: 10),
        Text(textButton),
      ],),
    );
  }
}