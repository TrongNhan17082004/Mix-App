import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //! Anime
  int animeNumber = 5;

  //! Cartoon
  int cartoonNumber = 1;

  //! Mix
  String mix = 'images/Mix/default mix.png';

  void randomNumber() {
    animeNumber = 5 + Random().nextInt(8 - 5);
    cartoonNumber = 1 + Random().nextInt(4 - 1);
    //! Goku + Finn
    if (pow(animeNumber, cartoonNumber) == 5) {
      mix = 'images/Mix/goku finn.png';
    }
    //! Goku + Simpson
    if (pow(animeNumber, cartoonNumber) == 25) {
      mix = 'images/Mix/goku simpson.jpg';
    }
    //! Goku + Steven
    if (pow(animeNumber, cartoonNumber) == 125) {
      mix = 'images/Mix/goku steven universe.png';
    }
    //! Luffy + Finn
    if (pow(animeNumber, cartoonNumber) == 6) {
      mix = 'images/Mix/luffy finn.jpg';
    }
    //! Luffy + Simpson
    if (pow(animeNumber, cartoonNumber) == 36) {
      mix = 'images/Mix/luffy simpson.png';
    }
    //! Luffy + Steven
    if (pow(animeNumber, cartoonNumber) == 216) {
      mix = 'images/Mix/luffy steven.png';
    }
    //! Naruto + Finn
    if (pow(animeNumber, cartoonNumber) == 7) {
      mix = 'images/Mix/naruto finn.png';
    }
    //! Naruto + Simpson
    if (pow(animeNumber, cartoonNumber) == 49) {
      mix = 'images/Mix/naruto simpson.jpg';
    }
    //! Naruto + Steven
    if (pow(animeNumber, cartoonNumber) == 343) {
      mix = 'images/Mix/naruto steven.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Column(
              children: [
                Text(
                  'Click Any Picture To Mix',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //! Anime Pic
                      Expanded(
                        child: FlatButton(
                            onPressed: () {
                              setState(() {
                                randomNumber();
                              });
                            },
                            child: Image.asset(
                                'images/Anime/anime$animeNumber.png')),
                      ),
                      Container(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      //! Cartoon Pic
                      Expanded(
                        child: FlatButton(
                            onPressed: () {
                              setState(() {
                                randomNumber();
                              });
                            },
                            child: Image.asset(
                                'images/Cartoon/cartoon$cartoonNumber.png')),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Result',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(
                  child: Image.asset(mix),
                )
              ],
            ),
          ),
        ));
  }
}
