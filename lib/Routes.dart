import 'package:flutter/material.dart';
import 'package:flutter_flat_app/screens/Login/index.dart';
import 'package:flutter_flat_app/screens/SignUp/index.dart';
import 'package:flutter_flat_app/screens/Home/index.dart';
import 'package:flutter_flat_app/screens/Profile/index.dart';
import 'package:flutter_flat_app/theme/style.dart';
import 'package:flutter_flat_app/screens/FindAGig//index.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen(),
    "/Profile": (BuildContext context) => new ProfileScreen(),
    "/FindAGig": (BuildContext context) => new FindagigScreen(),

  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: new FindagigScreen(),
      theme: appTheme,
      routes: routes,
    ));
  }
}
