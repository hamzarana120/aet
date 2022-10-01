import 'dart:ui';

import 'package:flutter/material.dart';

import 'bphrases.dart';
import 'bsents.dart';
import 'bwords.dart';
import 'dphrases.dart';
import 'dsents.dart';
import 'dwords.dart';
import 'fphrases.dart';
import 'fsents.dart';
import 'fwords.dart';
import 'gphrases.dart';
import 'gsents.dart';
import 'gwords.dart';

class Screen6 extends StatefulWidget {
  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'a',
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
                      'b',
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
                                              builder: (context) => bwords()));
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
                                                      bphrases()));
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
                                                    bsents()));
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'c',
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
                      'd',
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
                                              builder: (context) => dwords()));
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
                                                      dphrases()));
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
                                                    dsents()));
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
                    margin: EdgeInsets.all(30),
                    child: Text(
                      'e',
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
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'g',
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
              Expanded(
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'h',
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
