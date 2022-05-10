import 'package:flutter/material.dart';

//THIS IS CUSTOM LOGIN BUTTON WIDGET USE IN LOGIN SCREEN  CREATED BY HAMMAD DATE:2-22-22
class cutomloginbutton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textcolor;
  final VoidCallback onPressed;
  const cutomloginbutton(
      {required this.onPressed,
      required this.color,
      required this.text,
      required this.textcolor,
      key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
        child: MaterialButton(
          height: size.height * 0.1,

          minWidth: size.width,
          // padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
          onPressed: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textcolor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
