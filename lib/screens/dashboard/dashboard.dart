import 'package:eut_app/gen/assets.gen.dart';
import 'package:eut_app/global/constants.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eut_app/widgets/navirail.dart';
import 'package:flutter/material.dart';

//THIS IS DASHBOARD SCREEN OR LANDING PAGE CREATED BY HAMMAD DATE:3-30-22
class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          backgroundColor: darkGrey,
          title: Container(
            height: 40.h,
            width: 10 * 20.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kcontainer,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "EUT ",
                  style: setTextStyle(
                      size: 25.sp, color: whitecolor, weight: FontWeight.w800),
                ),
                Text(
                  "FO V1.0.1 ",
                  style: setTextStyle(
                      size: 20.sp, color: whitecolor, weight: FontWeight.w600),
                ),
              ],
            ),
          ),
          centerTitle: true,
          elevation: 0,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "User:",
                style: setTextStyle(
                    size: 25.sp, color: whitecolor, weight: FontWeight.w600),
              ),
              SizedBox(
                width: 15.sp,
              ),
              Text(
                "Admin ",
                style: setTextStyle(
                    size: 25.sp, color: whitecolor, weight: FontWeight.w600),
              ),
            ],
          ),
          leadingWidth: 200.w,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 6.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "ONLINE",
                    style: setTextStyle(
                        size: 25.sp,
                        color: whitecolor,
                        weight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 69, 240, 74),
                    radius: 10.sp,
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.national.path,
                  height: 10 * 8,
                  width: 10 * 12,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.sp, right: 8.0.sp),
                  child: SizedBox(
                    width: 300.w,
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        fillColor: Color(0xfff2f2f0),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Navirail()),
          ],
        ));
  }
}
