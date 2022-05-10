import 'package:eut_app/global/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//THIS IS PICK ORDER CONTAINER WIDGET USE IN OVERVIEW SCREEN WIDGET  CREATED BY HAMMAD DATE:4-22-22

class PickOrderContainer extends StatelessWidget {
  final Color verticalbarcolor;
  const PickOrderContainer({required this.verticalbarcolor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10 * 15.h,
      color: const Color(0xfff2f2f0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: verticalbarcolor,
            width: 5.w,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 10 * 13.w,
              color: whitecolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: whitecolor,
                    child: Text("Pick Order # 123123123",
                        style: setTextStyle(
                            size: 15.sp,
                            color: ktitle,
                            weight: FontWeight.w700)),
                  ),
                  Container(
                    color: whitecolor,
                    child: Text("Date 2022-04-20",
                        style: setTextStyle(
                            size: 15.sp,
                            color: ksubtitle,
                            weight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: whitecolor,
                    child: Text("Customer Try Hard",
                        style: setTextStyle(
                            size: 15.sp,
                            color: ktitle,
                            weight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: whitecolor,
                    child: Text("Address",
                        style: setTextStyle(
                            size: 15.sp,
                            color: ktitle,
                            weight: FontWeight.w700)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Text("New",
                style: setTextStyle(
                    size: 15.sp, color: ktitle, weight: FontWeight.w700)),
          )
        ],
      ),
    ).addNeumorphism();
  }
}
