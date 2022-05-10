import 'package:eut_app/global/constants.dart';
import 'package:eut_app/widgets/custom_checkbox.dart';
import 'package:eut_app/widgets/customauthcontainers.dart';

import 'package:eut_app/widgets/cutomloginbutton.dart';
import 'package:eut_app/widgets/cutomtextform.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: whitecolor,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
          child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      height: size.height * 0.25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Oikya_Front_Logo.png/480px-Oikya_Front_Logo.png")),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                      child: Text.rich(TextSpan(children: <InlineSpan>[
                    TextSpan(
                      text: 'Industries that matters',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ]))),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              // color: Colors.blue,
                              width: size.width * 0.3,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const customtextform(
                                    fillColor: whitecolor,
                                    hinttext: 'Email',
                                    suffixicon: Icons.email,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const customtextform(
                                      fillColor: whitecolor,
                                      hinttext: 'Password',
                                      suffixicon: Icons.visibility_off),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: size.height * 0.1,
                                    width: size.width * 0.3,
                                    // color: Colors.pink,
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      children: [
                                        CustomCheckbox(),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Flexible(
                                          child: Text('Remember me',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  cutomloginbutton(
                                    onPressed: () {},
                                    color: (Colors.grey[500])!,
                                    text: 'Login',
                                    textcolor: whitecolor,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                width: size.width * 0.15,
                                child: Column(children: [
                                  CustomAuthContainer(
                                      onPressed: () {},
                                      image:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm_5x-yvWR1yEsWzvGq201kZ79kwSFJTWvGw&usqp=CAU"),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  CustomAuthContainer(
                                    onPressed: () {},
                                    image:
                                        "https://thumbs.dreamstime.com/b/finger-print-scanning-process-vector-icon-abstract-fingerprint-isolated-logo-white-background-166498737.jpg",
                                  )
                                ]),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
