import 'package:eut_app/global/constants.dart';
import 'package:flutter/material.dart';

//THIS IS CUSTOM CHECK BOX WIDGET USE IN LOGIN SCREEN  CREATED BY HAMMAD DATE:2-22-22
class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({Key? key}) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isChecked ? Colors.blue : whitecolor,
          borderRadius: BorderRadius.circular(4.0),
          border:
              isChecked ? null : Border.all(color: Colors.black, width: 1.5),
        ),
        width: 18,
        height: 18,
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 20,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
