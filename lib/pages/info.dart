import 'package:flutter/material.dart';

class InfoA extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return new Material(
      color: Colors.black,
      child: new Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
        children:<Widget>[
        new Text("Developed\nby\nSWork",
        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,),
        Text('Founder\nMd Shahbaj Jamil',
        style: new TextStyle(
                          color: Colors.yellow,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,)
        ]
        )
    );
  }
}