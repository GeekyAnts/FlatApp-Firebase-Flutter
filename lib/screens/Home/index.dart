import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
const HomeScreen({ Key key }) : super(key: key);

@override
HomeScreenState createState() => new HomeScreenState();

}

class HomeScreenState extends State<HomeScreen>{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body:new Center(child: new Text("Home"),));
  }
}