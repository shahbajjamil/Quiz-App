import 'package:flutter/material.dart';
import './quiz_page.dart';
import './info.dart';

class LandingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Quiz...!'),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: new Icon(Icons.search),
                onPressed: () {
                  print("taping on search");
                },
              ),
              new IconButton(
                icon: new Icon(Icons.info),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new InfoA()));
                },
              ),
            ],
          ),
          backgroundColor: Colors.black,
          body: Container(
              child: new InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new QuizPage())),
            child: new Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Lets Quizzz",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Tap to Start',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child:
                       Text('Developed by SWork',
                          style: new TextStyle(
                              color: Colors.yellow,
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal)),
                     ),
                  ],
                ),
             ],
            ),
          ))),
    );
  }
}
