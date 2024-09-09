import 'package:flutter/material.dart';
import 'package:interior_coffee/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: kPrimaryColor
      ),
      child: Text(buttonText, style: textButton.copyWith(color: kSecondaryColor)),
    );
  }
}