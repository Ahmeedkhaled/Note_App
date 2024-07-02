import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,this.maxLines=1});
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines:maxLines ,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).primaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Theme.of(context).primaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(18),
    );
  }
}
