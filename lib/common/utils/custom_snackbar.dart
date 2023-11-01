import 'package:flutter/material.dart';

class CustomSnackBar {
  static showsnack(context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: color,
        content: Text(
          message,
          style: TextStyle(
            fontFamily: 'vazir',
            fontSize: 15,
          ),
        )));
  }
}
