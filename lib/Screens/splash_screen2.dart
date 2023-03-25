import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
import '../widgets/dimentions.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text("Choose your Type",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    height: 203,
                    width: 259,
                    decoration: BoxDecoration(

                    ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      children: [
                        Image.asset('assets/images/Rectangle23164.png'),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Are you Parents',fontWeight: FontWeight.w400),
                            SizedBox(height: 10,),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.parentDashboardScreen);
                            },
                                child: Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                  ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 203,
                    width: 259,
                    decoration: BoxDecoration(

                    ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/Rectangle33.png'),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Are you Studio Partner',fontWeight: FontWeight.w400,),
                            SizedBox(height: 10,),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.loginScreen);
                            },
                                child: Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 203,
                    width: 259,
                    decoration: BoxDecoration(

                    ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images/Rectangle34.png'),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Are you Event Partner',fontWeight: FontWeight.w400),
                            SizedBox(height: 10,),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.loginScreen);
                            },
                                child: Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
