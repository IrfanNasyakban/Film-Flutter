import 'package:listfilm/componentlogin/usernamepassword/textfield.dart';
import 'package:flutter/material.dart';

class Username extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Username',
        ),
      ),
    );
  }
}
