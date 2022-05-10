import 'package:eut_app/global/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//THIS IS LATEST ORDER CONTAINER WIDGET  CREATED BY HAMMAD DATE:3-22-22
class LatestOrderList extends StatelessWidget {
  final Color color;

  const LatestOrderList({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Container(
        height: 200.h,
        decoration: BoxDecoration(
            color: whitecolor,
            border: Border.all(
              style: BorderStyle.solid,
              color: ksubtitle,
            )),
        child: Row(children: [
          //vertical bar container
          Container(
            height: 200.h,
            width: 5.w,
            color: color,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: 150.w,
                        color: whitecolor,
                        child: Text("Lot # 1231123123221",
                            style: setTextStyle(
                                size: 20.sp,
                                color: ktitle,
                                weight: FontWeight.w900)),
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60.w,
                            color: whitecolor,
                            child: Text("010101",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          Container(
                            width: 100.w,
                            color: whitecolor,
                            child: Text("NC36",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60.w,
                            color: whitecolor,
                            child: Text("SKU:",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          Container(
                            // width: 100.w,
                            color: whitecolor,
                            child: Text("1231231123",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            // width: 60.w,
                            color: whitecolor,
                            child: Text("2022-12-02",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            // width: 100.w,
                            color: whitecolor,
                            child: Text("(3Months Remaining)",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Container(
                        // width: 80.w,
                        color: whitecolor,
                        child: Text("Shipping Envelope",
                            style: setTextStyle(
                                size: 15.sp,
                                color: ksubtitle,
                                weight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            //  width: 20.w,
                            color: whitecolor,
                            child: Text("New",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                // color: whitecolor,
                                border: Border.all(style: BorderStyle.solid)),
                            width: 30.w,
                            child: Text("10",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            //    width: 40.w,
                            color: whitecolor,
                            child: Text("OHQTY",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            //    width: 40.w,
                            color: whitecolor,
                            child: Text("12",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            //   width: 40.w,
                            color: whitecolor,
                            child: Text("0RDQTY",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            //   width: 40.w,
                            color: whitecolor,
                            child: Text("12",
                                style: setTextStyle(
                                    size: 15.sp,
                                    color: ksubtitle,
                                    weight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200.h,
            width: 10.w,
            color: const Color(0xffe7d33a),
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 20.sp,
                color: grayColor,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
