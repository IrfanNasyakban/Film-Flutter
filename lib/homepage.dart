import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  final List<String> _images = [
    'assets/images/harrypotter.png',
    'assets/images/kungfupanda.png',
    'assets/images/powerrangers.png',
    'assets/images/despicableme.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
            title: Text("List Film"),
            backgroundColor: Color.fromARGB(255, 43, 16, 97),
            leading: IconButton(
               onPressed: (){
                 Navigator.pop(context);
               },
               icon:Icon(Icons.arrow_back_ios), 
               //replace with our own icon data.
            )
          ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Horizontal',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 38, 27, 154),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ringm',
                ),
              ),
              CarouselSlider(
                items: _images
                    .map((item) => Image(image: AssetImage(item)))
                    .toList(),
                options: CarouselOptions(
                  height: 260.0,
                  viewportFraction: 0.8,
                  aspectRatio: 3.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              Text(
                'Vertikal',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 38, 27, 154),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ringm',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              CarouselSlider(
                items: _images
                    .map((item) => Image(image: AssetImage(item)))
                    .toList(),
                options: CarouselOptions(
                  height: 220.0,
                  viewportFraction: 0.8,
                  aspectRatio: 3.0,
                  scrollDirection: Axis.vertical,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
