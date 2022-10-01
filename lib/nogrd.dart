import 'package:aet/anim.dart';
import 'package:aet/man.dart';
import 'package:flutter/material.dart';

import 'prk8.dart';

class S7 extends StatefulWidget {
  @override
  State<S7> createState() => _S7State();
}

class _S7State extends State<S7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/op.jpeg"),
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
                      'Prek - 8',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen8()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'Prek - 9',
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
                        MaterialPageRoute(builder: (context) => Screen8()));
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
                      'quizz',
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
                        MaterialPageRoute(builder: (context) => AnimalQuiz()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 80),
                    child: Text(
                      'splash card',
                      textScaleFactor: 2,
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
                        MaterialPageRoute(builder: (context) => HomeScreen()));
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
