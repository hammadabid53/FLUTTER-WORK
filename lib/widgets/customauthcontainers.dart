import 'package:flutter/material.dart';

//THIS IS CUSTOM AUTHENTICATION WIDGET USE IN LOGIN SCREEN  CREATED BY HAMMAD DATE:2-22-22
class CustomAuthContainer extends StatelessWidget {
  final String image;

  final VoidCallback onPressed;
  const CustomAuthContainer(
      {required this.onPressed, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: size.height * 0.2,
          width: size.width * 0.13,
          decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          )),
    );
  }
}
