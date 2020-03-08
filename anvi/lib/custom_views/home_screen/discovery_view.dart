import 'package:flutter/material.dart';

class DiscoveryView extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          // Image(image: AssetImage("assets/fate-grand-order-babylonia.jpeg")),
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}