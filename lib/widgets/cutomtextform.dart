import 'package:flutter/material.dart';

//THIS IS CUSTOM TEXT FORM WIDGET USE IN LOGIN SCREEN  CREATED BY HAMMAD DATE:2-22-22
class customtextform extends StatelessWidget {
  final Color fillColor;
  final String hinttext;
  final IconData suffixicon;

  const customtextform(
      {required this.fillColor,
      required this.hinttext,
      required this.suffixicon,
      key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        hintText: hinttext,
        suffixIcon: Icon(suffixicon),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
