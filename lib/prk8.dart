import 'dart:ui';

import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget {
  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/lop.jpeg"),
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
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'f',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'sh',
                      textAlign: TextAlign.center,
                      textScaleFactor: 6,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'ch',
                      textAlign: TextAlign.center,
                      textScaleFactor: 6,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'th',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'y',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'r',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'j',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      't',
                      textAlign: TextAlign.center,
                      textScaleFactor: 7,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/po.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    height: 100,
                    width: 20,
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
        ],
      ),
    ));
  }
}
