import 'package:flutter/material.dart';


//all the colors

const primaryColor = Color(0xFFf4f4f4);
const whitecolor = Color(0xFFffffff);
const ksubtitle = Color(0xFFafb2b9);
const kTextColor = Color(0xFF333333);
const kcontainer = Color(0xFFc9cdd1);
const ktitle = Color(0xFF341b27);
const lighterGrey = Color(0xfff0f4f8);
const lightGrey = Color(0xffdbe2ed);
const darkGrey = Color(0xff4e5d6a);
const mutedColor = Color(0xff9ED0FF);
const grayColor = Color(0xff808BA2);



//defaultpadding
const kDefaultPadding = 20.0;

//global textstyle

TextStyle setTextStyle(
    {color = Colors.white, double size = 14, weight = FontWeight.normal}) {
  return TextStyle(
    fontWeight: weight,
    color: color,
    fontSize: size,
    fontFamily: 'RobotoMono',
  );
}

//for page navigation
class RoutingPage {
  static goTonext({required BuildContext context, required Widget navigateTo}) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => navigateTo));
  }
}

//Neumorphisum design for containers
extension Neumorphism on Widget {
  addNeumorphism(
      {double borderRadius = 10.0,
      Offset offset = const Offset(4.5, 4.5),
      double blurRadius = 5,
      Color topShadowColor = Colors.white10,
      Color bottomShadowColor = Colors.white10}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}
