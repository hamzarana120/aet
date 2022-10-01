import 'dart:ui';

import 'package:flutter/material.dart';

import 'nogrd.dart';
import 'prek2age.dart';
import 'prk5.dart';
import 'prk6n.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '            Select your age',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/tip.jpeg"),
            fit: BoxFit.fill,
          )),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 90),
                        child: Text(
                          '2 - 4',
                          textScaleFactor: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/po.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        height: 100,
                        width: 40,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Prek()));
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 90),
                        child: Text(
                          '4 - 6',
                          textScaleFactor: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/po.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        height: 100,
                        width: 80,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen5()));
                      },
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 90),
                        child: Text(
                          '6 - 7',
                          textScaleFactor: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/po.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        height: 100,
                        width: 80,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => S6()));
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 90),
                        child: Text(
                          '7 =>',
                          textScaleFactor: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/po.jpeg"),
                              fit: BoxFit.cover,
                            )),
                        height: 100,
                        width: 40,
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => S7()));
                      },
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              )),
            ],
          ),
        ));
  }
}
