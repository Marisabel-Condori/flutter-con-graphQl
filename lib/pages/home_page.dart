import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RaisedButton(
            child: Text('Heroe'),
            onPressed: (){}
          ),
          RaisedButton(
            child: Text('Villano'),
            onPressed: (){}
          ),
        ],
      ),
    );
  }
}