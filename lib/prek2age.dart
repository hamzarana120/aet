import 'package:flutter/material.dart';

import '2-4screen.dart';
import 'prek3.dart';
import 'prk2.dart';
import 'prk4.dart';

class Prek extends StatefulWidget {
  @override
  State<Prek> createState() => _PrekState();
}

class _PrekState extends State<Prek> {
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
                      'Prek - 1',
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
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen()));
                },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'Prek - 2',
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
                        MaterialPageRoute(builder: (context) => Screen2()));
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
                      'Prek - 3',
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
                        MaterialPageRoute(builder: (context) => Screen3()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'prek - 4',
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
                        MaterialPageRoute(builder: (context) => Screen4()));
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
