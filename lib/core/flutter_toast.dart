import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastFlutter {
  static flutterToast() {
    return Fluttertoast.showToast(
        msg: "Task is delete sucessfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
