import 'package:flutter/material.dart';
import 'package:interior_coffee/theme.dart';

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(
          iconImage: Image(
              height: 35,
              width: 35,
              image: AssetImage('lib/images/google.png')),
          textButton: 'Login with Google',
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
      height: mediaQuery.height * 0.07,
      width: mediaQuery.width * 0.84,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),color: kWhiteColor,
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          SizedBox(width: 20),
          Text(textButton),
        ],
      ),
    );
  }
}
