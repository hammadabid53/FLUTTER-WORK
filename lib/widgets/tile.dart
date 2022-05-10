import 'package:eut_app/global/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

//THIS IS TILE WIDGET  CREATED BY HAMMAD DATE:3-22-22
class TileWidget extends StatelessWidget {
  final IconData iconData;
  final String tilename;
  const TileWidget({required this.iconData, required this.tilename, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 15.sp),
      height: 50.h,
      width: 10 * 12.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: darkGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15.sp,
            backgroundColor: whitecolor,
            child: Icon(
              iconData,
              size: 15.sp,
              color: const Color(0xff000000),
            ),
          ),
          Text(tilename,
              style: GoogleFonts.roboto(
                  fontStyle: FontStyle.normal,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: whitecolor)),
        ],
      ),
    );
  }
}
