import 'package:flutter/material.dart';

class AlertService {
  static void showDialogAlert(BuildContext context,
          {String title, String textMenssage}) =>
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text(
              title,
              style: TextStyle(fontSize: 15.0),
            ),
            content: new Text(
              textMenssage,
              style: TextStyle(fontSize: 15.0),
            ),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                color: Colors.green,
                child: new Text(
                  "CLOSE",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
}
