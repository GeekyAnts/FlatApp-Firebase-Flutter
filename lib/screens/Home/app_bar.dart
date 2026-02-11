import 'package:flutter/material.dart';
import 'style.dart';
class FlexibleAppBar extends AppBar {


  FlexibleAppBar(String title, double height, double width) : super(

      flexibleSpace: new FlexibleSpaceBar(
          title: new Text(title),
          background: _buildBackground(height,width)
      )
  );

  static Widget _buildBackground(double height, double width) {
    return new Container (
      decoration: new BoxDecoration(image: backgroundHome),
        child: new Row(
          children: <Widget>[
            new Image(image: plogo, width: width, height: height),


          ],
        )

          ,

    );

  }

}