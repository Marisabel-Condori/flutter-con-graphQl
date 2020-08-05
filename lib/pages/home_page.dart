
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Heroe'),
              onPressed: () => Navigator.pushNamed(context, 'heroe')
            ),
            RaisedButton(
              child: Text('Villano'),
              onPressed: () => Navigator.pushNamed(context, 'villano')
            ),
          ],
        ),
      ),
    );
  }
}