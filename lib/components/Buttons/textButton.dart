import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  String buttonName;
  final VoidCallback onPressed;
  TextStyle textStyle,buttonTextStyle;
  //passing props in react style
  TextButton({
    this.buttonName,
    this.onPressed,
    this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return (new FlatButton(
      child: new  Text(
        buttonName,
        textAlign: TextAlign.center,
        style: buttonTextStyle
      ),
      onPressed: onPressed,
    ));
  }
}
