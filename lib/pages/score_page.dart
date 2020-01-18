import 'package:flutter/material.dart';
import './landing_pages.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final int totalQuestion;

  ScorePage(this.score, this.totalQuestion);

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.yellow,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            new Text(
              "Thank you for playing!",
              style: new TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "Your Final",
              style: new TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Score",
              style: new TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
            ),
            Text(
              score.toString() + "/" + totalQuestion.toString(),
              style: new TextStyle(
                  color: Colors.green,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
            ),
            new IconButton(
                icon: new Icon(Icons.arrow_right),
                color: Colors.blueAccent,
                iconSize: 90.0,
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new LandingPages()),
                    (Route route) => route == null)),
            Text(
              'Developed by SWork',
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ));
  }
}
