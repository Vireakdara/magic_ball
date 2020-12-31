import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.blue[900],
          ),
          body: myWish(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class myWish extends StatefulWidget {
  @override
  _myWishState createState() => _myWishState();
}

class _myWishState extends State<myWish> {
  int ballImg = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballImg = Random().nextInt(5) + 1;
                });
                print("Button Pressed");
              },
              child: Image.asset("images/ball$ballImg.png"),
            ),
          ),
        ],
      ),
    );
  }
}
