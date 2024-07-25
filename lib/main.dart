import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget Example'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 200,
                color: Colors.blue,
              ),
              Positioned(
                top: 50,
                child: Image.asset(
                  'assets/MainAfter.webp',
                  width: 100,
                  height: 100,
                ),
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Text(
                  'Hello Stack!',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
