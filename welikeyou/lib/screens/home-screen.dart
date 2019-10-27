import 'package:flutter/material.dart';
import 'package:welikeyou/screens/login-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController subDomainController = TextEditingController();

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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Enter Subdomain ",
                        style: TextStyle(color: Colors.black, fontSize: 40.0),
                      ),
                      Text(
                        "Enter your workspace's welikeyou Url ",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ]),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Domain",
                  // labelText: "Enter your workspace's welikeyou Url",
                  labelStyle: TextStyle(color: Colors.black),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                controller: subDomainController,
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      }
                    },
                    child: Text(
                      "CONTINUE",
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
