import 'package:flutter/material.dart';
import 'package:listfilm/homepage.dart';
import 'package:listfilm/login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40.0, right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 38, 27, 154),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ringm',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                  )
                ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              //password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                  )
                ),
                Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              //password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Re-Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                  )
                ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 57, 27, 132),
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
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 57, 27, 132),
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
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
