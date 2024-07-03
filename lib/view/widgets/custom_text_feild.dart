import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required ';
        } else {
          return null;
        }
      },
      cursorColor: Theme.of(context).primaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Theme.of(context).primaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
