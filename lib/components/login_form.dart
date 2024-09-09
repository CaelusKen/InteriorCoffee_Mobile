import 'package:flutter/material.dart';
import 'package:interior_coffee/theme.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildinputForm('Email', false),
        buildinputForm('Password', true),
      ],
    );
  }

  Padding buildinputForm(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: kTextFieldColor),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    color: Color(0xFFF6F2CB),
                  )
                : null),
        style: TextStyle(color: Color(0xFFF6F2CB)),
      ),
    );
  }
}
