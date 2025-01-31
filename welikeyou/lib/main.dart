import 'package:flutter/material.dart';
import 'package:welikeyou/screens/home-screen.dart';
import 'dart:async';

void main() async {
  runApp(
    MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)))),
    ),
  );
}
