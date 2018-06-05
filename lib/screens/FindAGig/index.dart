import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flat_app/theme/style.dart';
import 'style.dart';
import 'package:flutter_flat_app/components/TextFields/inputField.dart';
import 'package:flutter_flat_app/components/Buttons/textButton.dart';
import 'package:flutter_flat_app/components/Buttons/roundedButton.dart';
import 'package:flutter_flat_app/services/validations.dart';
import 'package:flutter_flat_app/services/authentication.dart';



class FindagigScreen extends StatefulWidget {
  const FindagigScreen({Key key}) : super(key: key);

  @override
  FindagigScreenState createState() => new FindagigScreenState();
}


class FindagigScreenState extends State<FindagigScreen> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(

        body: new Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: new BoxDecoration(image: backroundfg),



          child: new Column(
            children: <Widget>[

              new Container(child: new Column(
                children: <Widget>[
                  new Container(
          padding: const EdgeInsets.only(left:150.0, top: 80.0),
                    child: new Text("FIND A GIG",style: findGigHeader),
                  )
                ],
              )),
              new FloatingActionButton(onPressed: null,

              backgroundColor: Colors.green,

                child: const Icon(Icons.add),


              ),
            new Container(

              decoration: new BoxDecoration(image: Danish),
              width: screenSize.width*0.7,
              height: screenSize.height*0.5,

            )



            ])


            ,
          ),
        );
    }
}