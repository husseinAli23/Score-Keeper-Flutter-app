import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int manCityScore = 0;
  int manUnitedScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Score app"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Man United"),
                            SizedBox(
                              height: 10.0,
                            ),
                            Image(
                              image: AssetImage(
                                "assets/image/manu.png",
                              ),
                              width: 150.0,
                            ),
                            Text(
                              '$manUnitedScore',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  letterSpacing: 3,
                                  color: Colors.red),
                            ),
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  manUnitedScore += 1;
                                });
                              },
                              child: Text("+"),
                            ),
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  if (manUnitedScore != 0) {
                                    manUnitedScore -= 1;
                                  }
                                });
                              },
                              child: Text("-"),
                            ),
                          ],
                        ),
                        Column(

                          children: <Widget>[
                            Text("Man City"),
                            SizedBox(
                              height: 10.0,
                            ),
                            Image(
                              image: AssetImage("assets/image/manc.png"),
                              width: 150.0,
                            ),
                            Text(
                              '$manCityScore',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  letterSpacing: 3,
                                  color: Colors.blue),
                            ),
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  manCityScore += 1;
                                });
                              },
                              child: Text("+"),
                            ),
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  if (manCityScore != 0) {
                                    manCityScore -= 1;
                                  }
                                });
                              },
                              child: Text("-"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              manCityScore=0;
                              manUnitedScore=0;
                            });
                          },
                          child: Text("Reset"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

