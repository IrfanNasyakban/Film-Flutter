import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 184, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 3, 67),
        centerTitle: true,
        title: Text('List Film'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 190.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 121.66,
                      height: 180.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mrbean.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 121.66,
                      height: 180.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/despicableme.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 121.66,
                      height: 180.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/harrypotter.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 121.66,
                      height: 180.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/kungfupanda.png'),
                        ),
                      ),
                    ), //buku6
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 400.0,
                child: ListView(
                  children: [
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/powerrangers.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/despicableme.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/harrypotter.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mrbean.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
