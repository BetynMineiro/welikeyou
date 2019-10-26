import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

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
                  "Enter Subdomain ",
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 50.0),
                    labelText: "Enter your workspace's welikeyou Url",
                    labelStyle: TextStyle(color: Colors.black)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
                controller: weightController,
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
                      "Continue",
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
