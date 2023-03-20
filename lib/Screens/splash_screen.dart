import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../../routers/my_router.dart';
import '../Router/my_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      SharedPreferences pref = await SharedPreferences.getInstance();
     // if (pref.getString("userData") != null) {
     //   Get.offAllNamed(MyRouter.bottomNavbar);
        //Get.offAllNamed(MyRouter.bottomnavbar);
     // } else {
        Get.offAllNamed(MyRouter.onBoarding);
        // if (pref.getBool("shownIntro") == null)
        // {
        //   Get.offAllNamed(MyRouter.onboarding);
        // } else {
        // }
     // }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: screenSize.width * 45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splace.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: screenSize.width * 0.75,
              left: screenSize.width * 0.35,
              child: Column(
                children: [
                  // Container(
                  //   margin: const EdgeInsets.only(top: 10),
                  //   height: screenSize.width * 0.30,
                  //   width: screenSize.width * 0.30,
                  //   decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/images/logo.png"),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   margin: const EdgeInsets.only(top: 10),
                  //   height: screenSize.width * 0.10,
                  //   width: screenSize.width * 0.30,
                  //   decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/images/textmain.png"),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
