import 'package:listfilm/registerscreen.dart';
import 'package:flutter/material.dart';

class ButtonDaftar extends StatelessWidget {
  const ButtonDaftar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 150,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterScreen(),
            ),
          );
        },
        child: Text(
          'Daftar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
