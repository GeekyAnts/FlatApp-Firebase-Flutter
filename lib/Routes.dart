import 'package:flutter/material.dart';
import 'package:flutter_flat_app/screens/Login/index.dart';
import 'package:flutter_flat_app/screens/SignUp/index.dart';
import 'package:flutter_flat_app/screens/Home/index.dart';
import 'package:flutter_flat_app/theme/style.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: new LoginScreen(),
      theme: appTheme,
      routes: routes,
    ));
  }
}
