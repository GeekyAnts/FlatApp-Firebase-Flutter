import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flat_app/theme/style.dart';
import 'style.dart';
import 'package:flutter_flat_app/components/TextFields/inputField.dart';
import 'package:flutter_flat_app/components/Buttons/textButton.dart';
import 'package:flutter_flat_app/components/Buttons/roundedButton.dart';
import 'package:flutter_flat_app/services/validations.dart';
import 'package:flutter_flat_app/services/authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  BuildContext context;
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ScrollController scrollController = new ScrollController();
  UserData user = new UserData();
  UserAuth userAuth = new UserAuth();
  bool autovalidate = false;
  Validations validations = new Validations();

  _onPressed() {
    print("button clicked");
  }

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  void _handleSubmitted() {
    final FormState form = formKey.currentState;
    if (!form.validate()) {
      autovalidate = true; // Start validating on every change.
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      //print("here onval");
      Navigator.pushNamed(context, "/HomePage");
     /* userAuth.verifyUser(user).then((onValue) {
        Navigator.pushNamed(context, "/HomePage");
        //if (onValue == "Login Successfull")
        //  Navigator.pushNamed(context, "/HomePage");
        //else
        //  showInSnackBar(onValue);
      }).catchError((PlatformException onError) {
        print("Kanto theres an error");
        showInSnackBar(onError.message);
      });

      */


    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    //print(context.widget.toString());
    Validations validations = new Validations();
    return new Scaffold(
        key: _scaffoldKey,
        body: new SingleChildScrollView(
            controller: scrollController,
            child: new Container(
              //padding: new EdgeInsets.all(16.0),
              decoration: new BoxDecoration(image: backgroundImage),
              child: new Column(
                children: <Widget>[
                  new Container(
                   // height: screenSize.height / 4,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Stack(
                          children: <Widget>[
                            new Container(
                              width:screenSize.width,
                              height: screenSize.height * 0.20,
                        decoration: new BoxDecoration(
                                    image: rectangle),

                            child: new Container(


                                child: new Image(
                                  alignment: Alignment.bottomLeft,
                                  image: logo,
                                  width: screenSize.width *0.005,

                                  height: screenSize.height *0.005,
                                )),
                            )],
                        ),
                      ],
                    ),
                  ),
                        new Container(
                         // height: screenSize.height / 4,
                       child:  new Center(
                            child: new Image(
                              image: plogo,
                              alignment: Alignment.center,
                              width: screenSize.width * 0.8,
                              height: screenSize.height *0.30,
                            ))),

                  new Container(
                    height: screenSize.height *0.50,
                    width: screenSize.width *0.80,
                  // decoration:new BoxDecoration(color: Colors.white) ,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Form(
                          key: formKey,
                          autovalidate: autovalidate,
                          child: new Column(
                            children: <Widget>[

                              new InputField(
                                  hintText: "Email",
                                  obscureText: false,
                                  textInputType: TextInputType.text,
                                  textStyle: textStyle,
                                  textFieldColor: textFieldColor,
                                  icon: Icons.mail_outline,
                                  iconColor: Colors.white,
                                  bottomMargin: 20.0,
                                  validateFunction: validations.validateEmail,
                                  onSaved: (String email) {
                                    user.email = email;
                                  }),
                              new InputField(
                                  hintText: "Password",
                                  obscureText: true,
                                  textInputType: TextInputType.text,
                                  textStyle: textStyle,
                                  textFieldColor: textFieldColor,
                                  icon: Icons.lock_open,
                                  iconColor: Colors.white,
                                  bottomMargin: 30.0,
                                  validateFunction:
                                      validations.validatePassword,
                                  onSaved: (String password) {
                                    user.password = password;
                                  }),
                              new RoundedButton(

                                buttonName: "Log In",
                                onTap: _handleSubmitted,
                                width: screenSize.width,
                                height: 50.0,
                                bottomMargin: 10.0,
                                borderWidth: 0.0,

                                buttonColor: primaryColor,
                              ),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new TextButton(
                                      buttonName: "New Account",
                                      onPressed: () => onPressed("/SignUp"),
                                      buttonTextStyle: buttonTextStyle),
                                  new TextButton(
                                      buttonName: "Need Help?",
                                      onPressed: _onPressed,
                                      buttonTextStyle: buttonTextStyle)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                  ,

                ],
              ),
            )));
  }
}
