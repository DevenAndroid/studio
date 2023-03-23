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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    // padding: EdgeInsets.all(30),
                      //margin: EdgeInsets.only(top: AddSize.size5),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/undrawworkoutgcgu1.png",
                                height: AddSize.size16 * 17,
                                width: AddSize.size16 * 17,
                                fit: BoxFit.contain,
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Positioned(
                  top: AddSize.size30 * 16,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            //spreadRadius: 40,
                            blurRadius: 1,
                            blurStyle: BlurStyle.solid,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .4,
                    margin: EdgeInsets.only(top: AddSize.size10),
                    padding: EdgeInsets.only(
                      top: AddSize.size20,
                      left: AddSize.size20,
                      right: AddSize.size20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ElevatedButton(onPressed: ()
                          {
                           // Get.toNamed(MyRouter.loginScreen);
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                minimumSize: Size(340, 70),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AddText(text: 'Are You Parents',color:Colors.black,fontSize: 19),
                                  InkWell(onTap: (){
                                    Get.toNamed(MyRouter.loginScreen);
                                  },
                                      child: Icon(Icons.arrow_forward_outlined,color: Colors.black,))
                                ],
                              )
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(onPressed: ()
                          {
                            // Get.toNamed(MyRouter.loginScreen);
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.buttonColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: AppTheme.buttonColor,
                                  ),
                                ),
                                minimumSize: Size(340, 70),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AddText(text: 'Are You Studio Partner',color:Colors.white,fontSize: 19),
                                  InkWell(onTap: (){
                                    Get.toNamed(MyRouter.loginScreen);
                                  },
                                      child: Icon(Icons.arrow_forward_outlined))
                                ],
                              )
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(onPressed: ()
                          {
                           // Get.toNamed(MyRouter.loginScreen);
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                minimumSize: Size(340, 70),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AddText(text: 'Are You Event Partner',color:Colors.black,fontSize: 19),
                                  InkWell(onTap: (){
                                    Get.toNamed(MyRouter.loginScreen);
                                  },
                                    child: Icon(Icons.arrow_forward_outlined,color: Colors.black,))
                                ],
                              )
                          ),


                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
