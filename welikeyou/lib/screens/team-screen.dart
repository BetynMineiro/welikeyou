import 'package:flutter/material.dart';
import 'package:welikeyou/models/item.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:welikeyou/screens/login-screen.dart';

class TeamScreen extends StatefulWidget {
  var items = new List<Item>();
  TeamScreen() {
    this.items = [
      Item("teste1", false),
      Item("teste2", true),
      Item("teste3", false),
      Item("teste4", true)
    ];
  }
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  void remove(int idx) => setState(() {
        widget.items.removeAt(idx);
      });

  Future load() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString('data');
    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  _TeamScreenState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctx, int idx) {
          final itens = widget.items[idx];

          return Dismissible(
            key: Key(
              itens.title,
            ),
            child: Directionality(
              child: CheckboxListTile(
                secondary: IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.red,
                  onPressed: () {},
                ),
                title: Text(
                  itens.title,
                  textDirection: TextDirection.ltr,
                ),
                subtitle: Text(
                  itens.title,
                  textDirection: TextDirection.ltr,
                ),
                value: itens.done,
                onChanged: (value) {
                  setState(() {
                    itens.done = value;
                  });
                },
              ),
              textDirection: TextDirection.rtl,
            ),
            background: Container(
              color: Colors.green.withOpacity(0.3),
            ),
            onDismissed: (direction) {
              print(direction);
              remove(idx);
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
