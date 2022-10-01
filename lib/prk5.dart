import 'dart:ui';

import 'package:flutter/material.dart';

import 'fphrases.dart';
import 'fsents.dart';
import 'fwords.dart';
import 'gphrases.dart';
import 'gsents.dart';
import 'gwords.dart';

class Screen5 extends StatefulWidget {
  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/tip.jpeg"),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'f',
                      textScaleFactor: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 40,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Text(
                                'select your today exercise',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 5, bottom: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/kop.jpeg"),
                                            fit: BoxFit.contain,
                                          )),
                                      height: 280,
                                      width: 240,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => fwords()));
                                    },
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/php.jpeg"),
                                                fit: BoxFit.contain,
                                              )),
                                          height: 280,
                                          width: 140,
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      fphrases()));
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/ss.jpeg"),
                                              fit: BoxFit.contain,
                                            )),
                                        height: 280,
                                        width: 140,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    fsents()));
                                      },
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'g',
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
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Text(
                                'select your today exercise',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 5, bottom: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/kop.jpeg"),
                                            fit: BoxFit.contain,
                                          )),
                                      height: 280,
                                      width: 240,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => gwords()));
                                    },
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: InkWell(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/php.jpeg"),
                                                fit: BoxFit.contain,
                                              )),
                                          height: 280,
                                          width: 140,
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      gphrases()));
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/ss.jpeg"),
                                              fit: BoxFit.contain,
                                            )),
                                        height: 280,
                                        width: 140,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    gsents()));
                                      },
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
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
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'k',
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
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Text(
                                'select your today exercise',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/kop.jpeg"),
                                          fit: BoxFit.contain,
                                        )),
                                    height: 280,
                                    width: 240,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/php.jpeg"),
                                              fit: BoxFit.contain,
                                            )),
                                        height: 280,
                                        width: 140,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/ss.jpeg"),
                                            fit: BoxFit.contain,
                                          )),
                                      height: 280,
                                      width: 140,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'v',
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
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Text(
                                'select your today exercise',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/kop.jpeg"),
                                          fit: BoxFit.contain,
                                        )),
                                    height: 280,
                                    width: 240,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/php.jpeg"),
                                              fit: BoxFit.contain,
                                            )),
                                        height: 280,
                                        width: 140,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/ss.jpeg"),
                                            fit: BoxFit.contain,
                                          )),
                                      height: 280,
                                      width: 140,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
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
