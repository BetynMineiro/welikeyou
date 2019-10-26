import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 140.0, 10.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "images/wly.png",
                    fit: BoxFit.contain,
                    height: 70.0,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 110.0, bottom: 30.0),
                child: Text(
                  "Sign in to Test Team ",
                  style: TextStyle(color: Colors.black, fontSize: 40.0),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email:",
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                controller: loginController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Enter one valid workspace";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                controller: passwordController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Enter one valid workspace";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.0, bottom: 10.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print("Seguir");
                      }
                    },
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
