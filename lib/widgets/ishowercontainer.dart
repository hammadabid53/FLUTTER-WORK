import 'package:eut_app/widgets/latestordercontainer.dart';
import 'package:flutter/material.dart';

//THIS IS HOWER CONTAINER CREATED BY HAMMAD 4-10-22
class IsHower extends StatelessWidget {
  const IsHower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffA9A9A9),
              offset: Offset(-5.0, -0.0),
              blurRadius: 15.0,
              spreadRadius: 5),
        ],
      ),
      child: Column(
        children: const [
          LatestOrderList(
            color: Color(0xff006f22),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
