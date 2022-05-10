import 'package:eut_app/gen/assets.gen.dart';
import 'package:eut_app/global/constants.dart';
import 'package:eut_app/widgets/ishowercontainer.dart';
import 'package:eut_app/widgets/latestordercontainer.dart';
import 'package:eut_app/widgets/pickordercontainer.dart';
import 'package:eut_app/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//THIS IS OVERVIEW PAGE OF DASHBOARD SCREEN CREATED BY HAMMAD DATE:2-22-22
class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  bool ishower = false;
  bool ishower2 = false;
  bool ishower3 = false;
  bool ishower4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(4.0.sp),
                      child: Text(
                        "Good afternoon !",
                        style: setTextStyle(
                            size: 40.sp,
                            weight: FontWeight.w900,
                            color: kTextColor),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: whitecolor,
                      width: 715.w,
                      height: 650.h,
                      child: Padding(
                        padding: EdgeInsets.all(4.0.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                    //MAIN LATEST ORDER CONTAINER
                                    // height: 600.h,
                                    width: 500.w,
                                    decoration: const BoxDecoration(
                                      // color: Colors.black

                                      color: Color(0xfff2f2f0),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(4.0.sp),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Latest Orders",
                                                    style: setTextStyle(
                                                        size: 30.sp,
                                                        weight: FontWeight.w900,
                                                        color: kTextColor),
                                                  ),
                                                  Container(
                                                    height: 50.h,
                                                    width: 70.w,
                                                    decoration: BoxDecoration(
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: whitecolor,
                                                            offset: Offset(
                                                                -1.0, -1.0),
                                                            blurRadius: 1.0,
                                                          ),
                                                          BoxShadow(
                                                            color: Color(
                                                                0xfff2f2f0),
                                                            offset: Offset(
                                                                1.0, 1.0),
                                                            blurRadius: 1.0,
                                                          ),
                                                        ],
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            style: BorderStyle
                                                                .solid)),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(
                                                          2.0.sp),
                                                      child: Center(
                                                        child: Text(
                                                          "20",
                                                          style: setTextStyle(
                                                              size: 25.sp,
                                                              weight: FontWeight
                                                                  .w800,
                                                              color: ktitle),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.arrow_left,
                                                      size: 45.sp,
                                                      color: ktitle),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Icon(Icons.arrow_right,
                                                      size: 45.sp,
                                                      color: ktitle),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(4.0.sp),
                                          child: Container(
                                            color: const Color(0xfff2f2f0),
                                            height: 560.h,
                                            // width: 490.w,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  //LATEST ORDER LIST CONTAINER
                                                  ishower
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                              () => ishower =
                                                                  !ishower),
                                                          child:
                                                              const IsHower())
                                                      : InkWell(
                                                          onTap: () => setState(
                                                              () => ishower =
                                                                  !ishower),
                                                          child:
                                                              const LatestOrderList(
                                                            color: Color(
                                                                0xff006f22),
                                                          ),
                                                        ),

                                                  ishower2
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                              () => ishower2 =
                                                                  !ishower2),
                                                          child:
                                                              const IsHower())
                                                      : InkWell(
                                                          onTap: () => setState(
                                                              () => ishower2 =
                                                                  !ishower2),
                                                          child:
                                                              const LatestOrderList(
                                                            color: Color(
                                                                0xff006f22),
                                                          ),
                                                        ),
                                                  ishower3
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                              () => ishower3 =
                                                                  !ishower3),
                                                          child:
                                                              const IsHower())
                                                      : InkWell(
                                                          onTap: () => setState(
                                                              () => ishower3 =
                                                                  !ishower3),
                                                          child:
                                                              const LatestOrderList(
                                                            color: Color(
                                                                0xff006f22),
                                                          ),
                                                        ),
                                                  ishower4
                                                      ? InkWell(
                                                          onTap: () => setState(
                                                              () => ishower4 =
                                                                  !ishower4),
                                                          child:
                                                              const IsHower())
                                                      : InkWell(
                                                          onTap: () => setState(
                                                              () => ishower4 =
                                                                  !ishower4),
                                                          child:
                                                              const LatestOrderList(
                                                            color: Color(
                                                                0xff006f22),
                                                          ),
                                                        ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                            //PICK ORDER CONTAINER
                            Container(
                              // color: Colors.red,

                              width: 200.w,

                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 300.h,
                                      decoration: BoxDecoration(
                                        // color: Colors.black,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetGenImage(
                                                Assets.images.food5.assetName)),
                                      )),
                                  const PickOrderContainer(
                                    verticalbarcolor: Color(0xff006f22),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_left,
                              size: 30.sp,
                              color: ksubtitle,
                            ),
                            Text("Prev   |   Next ",
                                style: setTextStyle(
                                  size: 20.sp,
                                  color: ksubtitle,
                                  weight: FontWeight.w700,
                                )),
                            Icon(
                              Icons.arrow_right,
                              size: 30.sp,
                              color: ksubtitle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/eut.jpg",
                          width: 10 * 10.w,
                          height: 80.h,
                          // color: Colors.blue,
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Row(
                          children: [
                            const TileWidget(
                              iconData: Icons.send,
                              tilename: "Fulfilment",
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            const TileWidget(
                              iconData: Icons.receipt,
                              tilename: "Receiving",
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            const TileWidget(
                              iconData: Icons.transit_enterexit,
                              tilename: "Transfer",
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            const TileWidget(
                              iconData: Icons.history,
                              tilename: "History",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
