import "package:flutter/material.dart";
import 'package:flutter_flat_app/theme/style.dart';


class HomeScreen extends StatefulWidget {
const HomeScreen({ Key key }) : super(key: key);


@override
HomeScreenState createState() => new HomeScreenState();


}





class HomeScreenState extends State<HomeScreen>{

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

        appBar: new AppBar(
          title:  new Text("PUSH"),
          backgroundColor: primaryColor,


    ),
      drawer:  new Drawer(
          child: new ListView(
            children: <Widget> [
              new DrawerHeader(


                child: new Text('Header'),),
              new ListTile(
                title: new Text('First Menu Item'),
                onTap: () {},
              ),
              new ListTile(
                title: new Text('Second Menu Item'),
                onTap: () {},
              ),
              new Divider(),
              new ListTile(
                title: new Text('About'),
                onTap: () {},
              ),
            ],
          )
      ),



      );

  }
  }


