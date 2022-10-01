import 'package:flutter/material.dart';

import 'prk6-1.dart';
import 'prk7.dart';

class S6 extends StatefulWidget {
  @override
  State<S6> createState() => _S6State();
}

class _S6State extends State<S6> {
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
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
                    child: Text(
                      'Prek - 6',
                      textScaleFactor: 4,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen6()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
                    child: Text(
                      'Prek - 7',
                      textScaleFactor: 4,
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
                        MaterialPageRoute(builder: (context) => Screen7()));
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
