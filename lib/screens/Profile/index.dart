import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flat_app/theme/style.dart';
import 'package:flutter_flat_app/components/TextFields/inputField.dart';
import 'package:flutter_flat_app/components/Buttons/textButton.dart';
import 'package:flutter_flat_app/components/Buttons/roundedButton.dart';
import 'package:flutter_flat_app/services/validations.dart';
import 'package:flutter_flat_app/services/authentication.dart';
import 'style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  ProfileScreenState createState() => new ProfileScreenState();
}


class ProfileScreenState extends State<ProfileScreen> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(

        appBar: new AppBar(
            title: new Text(""),
            backgroundColor: primaryColor
        ),
      body:new Container(
        decoration: new BoxDecoration(image: backgroundImage),


        child:new Container(


        child : new Stack(
          alignment: Alignment.center,
          children: <Widget>[


        new Container(
          alignment: Alignment.center,
        decoration: new BoxDecoration(color: Colors.white),
          width: screenSize.width*0.7,
          height: screenSize.height,
        ),


            new Container(
            alignment: Alignment.topLeft,
            child: new Column(

              children: <Widget>[
            new Container(

                padding: const EdgeInsets.only(left:150.0, top: 10.0),
                height: screenSize.height*0.1,
            child: new Text("PROFILE",style: new TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),)
            ),
                new Container(
                  padding: const EdgeInsets.only(right:90.0),
                child:
                  new Container(
                    decoration: new BoxDecoration(image: profile),
                    alignment: Alignment.topLeft,
                    //decoration: new BoxDecoration(border: new Border.all(color:Colors.red)),
                    width: screenSize.width*0.75,
                    height: screenSize.height*0.30,
                  )
                ,
                ),
            new Container(
              padding: const EdgeInsets.only(left:90.0),
              child : new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                  children: <Widget>[
                    new Text("THEGUY FORREAL", style: new TextStyle(fontWeight:FontWeight.bold ),),
                    new Text("@theguy4real", style: new TextStyle(color: Colors.grey,),),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.location_on),
                        new Text("Midrand",style: new TextStyle(color: Colors.grey,),),
                      ],
                    ),
                  ],
                )
              ),
              new Container(

                  padding: const EdgeInsets.only(right:90.0,top:10.0),
                child:
                new Container(
                  padding: const EdgeInsets.only(top:50.0),
                  alignment: Alignment.topCenter,
                  decoration: new BoxDecoration(color: Colors.black),
                  width: screenSize.width*0.70,
                  height: screenSize.height*0.270,

                  child: new Center(
                   child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      new Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Text("Followers",style: titleRows),
                              new Text("132",style: countsRows)
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Text("Followiing",style: titleRows),
                              new Text("93",style: countsRows)
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Text("Comment", style: titleRows),
                              new Text("62",style: countsRows)
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Text("Likes",style: titleRows),
                              new Text("2162",style: countsRows)
                            ],
                          )
                        ],

                      ),
                      new Row(


                        children: <Widget>[new Column(

                          children: <Widget>[
                            new Container(
                      padding : const EdgeInsets.only(left:50.0,top:20.0),
                      child:
                            new Container(
                              decoration: new BoxDecoration(border: new Border.all(color:Colors.purple)),
                              padding : const EdgeInsets.only(top:20.0),
                              width: 200.0,
                              height: 60.0,

                              child: new RoundedButton(
                                  buttonName: "FOLLOW",
                                  width: 180.0,
                                  height: 50.0,
                                  bottomMargin: 10.0,
                                  borderWidth: 0.0,
                                  buttonColor: Colors.black,



                              ),
                            ),

                            )
                          ],
                        )
                        ]
                      )

                    ]),

                  ),
                )
              )

              ],

            ),
          ),





          ],

        ),
        )
      )
    );
  }

}
