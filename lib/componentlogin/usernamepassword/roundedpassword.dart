import 'package:listfilm/componentlogin/usernamepassword/textfield.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
        ),
      ),
    );
  }
}
