import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text("Choose your Type",style: TextStyle(color: Colors.white),),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 40),
        //   child: Text("Choose your Type",style: TextStyle(color: Colors.white),),
        // ),
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
                    height: 96,
                    width: size.width*.88,
                    decoration: BoxDecoration(
                      // color: Color(0xFFFFFFFF),
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Get.toNamed(MyRouter.parentDashboardScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 91,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF18B884).withOpacity(.35),
                              ),
                              // child: Image.asset('assets/images/parent_grp.png'),
                              child: SizedBox(
                                  child: SvgPicture.asset('assets/images/person_cat.svg',fit: BoxFit.none)),
                            ),

                          const Padding(
                             padding:  EdgeInsets.only(left: 18.0),
                             child:  Text('Are You Parents',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                           ),
                            const Spacer(),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.parentDashboardScreen);
                            },
                                child: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 203,
                  //   width: 259,
                  //   decoration: BoxDecoration(
                  //   ),child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Column(
                  //     children: [
                  //       Image.asset('assets/images/Rectangle23164.png'),
                  //       SizedBox(height: 20,),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           AddText(text: 'Are you Parents',fontWeight: FontWeight.w400),
                  //           SizedBox(height: 10,),
                  //           InkWell(onTap: (){
                  //             Get.toNamed(MyRouter.loginScreen);
                  //           },
                  //               child: Icon(Icons.arrow_forward))
                  //         ],
                  //       )
                  //     ],
                  // ),
                  //   ),
                  // ),
                 const SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: size.width*.88,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Get.toNamed(MyRouter.businessRegistrationScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 91,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF18B884).withOpacity(.35),
                              ),
                              // child: Image.asset('assets/images/studio_partner.png'),
                              child: SizedBox(
                                height: 2,
                                  child: SvgPicture.asset('assets/images/Vector.svg',fit: BoxFit.none,)),
                            ),

                           const Padding(
                             padding: EdgeInsets.only(left: 18.0),
                             child:  Text('Are You Studio Partner',style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                             ),),
                           ),
                            const Spacer(),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.businessRegistrationScreen);
                            },
                                child: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 96,
                    width: size.width*.88,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Get.toNamed(MyRouter.signupScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 91,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF18B884).withOpacity(.35),
                              ),
                              child: SizedBox(
                                  child: SvgPicture.asset('assets/images/Layer 2.svg',fit: BoxFit.none)),
                            ),

                            const Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text('Are You Event Partner',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),
                            const Spacer(),
                            InkWell(onTap: (){
                              Get.toNamed(MyRouter.signupScreen);
                            },
                                child: Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Container(
                  //   height: 203,
                  //   width: 259,
                  //   decoration: BoxDecoration(
                  //
                  //   ),child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Column(
                  //     children: [
                  //       Image.asset('assets/images/Rectangle33.png'),
                  //       SizedBox(height: 20,),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           AddText(text: 'Are you Studio Partner',fontWeight: FontWeight.w400,),
                  //           SizedBox(height: 10,),
                  //           InkWell(onTap: (){
                  //             Get.toNamed(MyRouter.loginScreen);
                  //           },
                  //               child: Icon(Icons.arrow_forward))
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // ),
                  // SizedBox(height: 20,),
                  // Container(
                  //   height: 203,
                  //   width: 259,
                  //   decoration: BoxDecoration(
                  //
                  //   ),child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Column(
                  //     children: [
                  //       Image.asset('assets/images/Rectangle34.png'),
                  //       SizedBox(height: 20,),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           AddText(text: 'Are you Event Partner',fontWeight: FontWeight.w400),
                  //           SizedBox(height: 10,),
                  //           InkWell(onTap: (){
                  //             Get.toNamed(MyRouter.loginScreen);
                  //           },
                  //               child: Icon(Icons.arrow_forward))
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
