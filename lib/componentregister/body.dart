import 'package:listfilm/componentregister/background.dart';
import 'package:listfilm/homepage.dart';
import 'package:listfilm/login.dart';
import 'package:listfilm/componentlogin/usernamepassword/roundedusername.dart';
import 'package:listfilm/componentlogin/usernamepassword/roundedpassword.dart';
import 'package:flutter/material.dart';

class ButtonKembali extends StatelessWidget {
  const ButtonKembali({
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
              builder: (context) => LoginScreen(),
            ),
          );
        },
        child: Text(
          'Kembali',
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

class ButtonDaftar2 extends StatelessWidget {
  const ButtonDaftar2({
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
              builder: (context) => HomePage(),
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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'REGISTER',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ringm',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Username(),
            SizedBox(
              height: 20,
            ),
            Password(),
            SizedBox(
              height: 20,
            ),
            Password(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonDaftar2(),
                SizedBox(
                  width: 30,
                ),
                ButtonKembali(),
              ],
            )
          ]),
    );
  }
}
