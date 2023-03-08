import 'package:listfilm/componentlogin/buttondaftar.dart';
import 'package:listfilm/componentlogin/usernamepassword/roundedusername.dart';
import 'package:listfilm/componentlogin/usernamepassword/roundedpassword.dart';
import 'package:flutter/material.dart';

import 'buttonmasuk.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromARGB(255, 30, 6, 71),
      height: 1000,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          child,
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Ringm',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
          ),
          Username(),
          SizedBox(
            height: 20,
          ),
          Password(
          ),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonMasuk(),
                SizedBox(
                  width: 30,
                ),
                ButtonDaftar(),
                
              ],
            )
        ],
      ),
    );
  }
}
