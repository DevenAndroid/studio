import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Router/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class MyBookingEventScreen extends StatefulWidget {
  const MyBookingEventScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingEventScreen> createState() => _MyBookingEventScreenState();
}

class _MyBookingEventScreenState extends State<MyBookingEventScreen> {
  RxString dropDownValue1 = ''.obs;
  RxString dropDownValue = ''.obs;

  var months = [
    'Jan',
    'Feb',
    'March',
    'April',
    'May',
    'June',
    'July',
  ];
  var completed = [
    'Yes',
    'No',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title:  Text("My Bookings",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 100,
                    child:  PopupMenuButton<int>(
                      constraints:
                      const BoxConstraints(maxHeight: 400),
                      position: PopupMenuPosition.under,
                      offset: Offset.fromDirection(50, 100),
                      onSelected: (value) {
                        setState(() {
                          dropDownValue.value = months[value];

                        });
                      },
                      // icon: Icon(Icons.keyboard_arrow_down),
                      itemBuilder: (context) => [
                        PopupMenuItem(

                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    dropDownValue.value =  '  Jan';
                                    Get.back();
                                  },
                                  child: const Text(' Jan'),
                                ),

                              ],
                            )),
                        PopupMenuItem(

                            child: Column(
                              children: [

                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      dropDownValue.value = '  Feb';
                                      Get.back();
                                    }); },
                                  child: const Text('  Feb'),
                                ),

                              ],
                            )),
                        PopupMenuItem(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      dropDownValue.value = '  March';
                                      Get.back();
                                    }); },
                                  child: const Text('  March'),
                                ),

                              ],
                            )),
                      ],
                      child: Container(
                        //padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4FAFF),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)),
                            border: Border.all(
                                color:const Color(0xFFD7EBFF),width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() {
                              return Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [

                                  Center(
                                    child: Text(
                                      dropDownValue.value
                                          .toString()
                                          .isEmpty
                                          ? "  Month "
                                          : dropDownValue.value
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF5E6282),
                                          fontWeight:
                                          FontWeight.w400),
                                    ),
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(width: 10,),
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color:Color(0xFF000000),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 50,
                    width: 135,
                    child:  PopupMenuButton<int>(
                      constraints:
                      const BoxConstraints(maxHeight: 400),
                      position: PopupMenuPosition.under,
                      offset: Offset.fromDirection(50, 100),
                      onSelected: (value) {
                        setState(() {
                          dropDownValue1.value = completed[value];

                        });
                      },
                      // icon: Icon(Icons.keyboard_arrow_down),
                      itemBuilder: (context) => [
                        PopupMenuItem(

                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    dropDownValue1.value =  '  Yes';
                                    Get.back();
                                  },
                                  child: const Text(' Yes'),
                                ),

                              ],
                            )),
                        PopupMenuItem(

                            child: Column(
                              children: [

                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      dropDownValue1.value = ' NO';
                                      Get.back();
                                    }); },
                                  child: const Text(' No'),
                                ),

                              ],
                            )),
                        // PopupMenuItem(
                        //     child: Column(
                        //       children: [
                        //         InkWell(
                        //           onTap: (){
                        //             setState(() {
                        //               dropDownValue2.value = '  Pending';
                        //               Get.back();
                        //             }); },
                        //           child: const Text('  Pending'),
                        //         ),
                        //
                        //       ],
                        //     )),
                      ],
                      child: Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4FAFF),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)),
                            border: Border.all(
                                color:const Color(0xFFD7EBFF),width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() {
                              return Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [

                                  Center(
                                    child: Text(
                                      dropDownValue1.value
                                          .toString()
                                          .isEmpty
                                          ? "  Completed "
                                          : dropDownValue1.value
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF5E6282),
                                          fontWeight:
                                          FontWeight.w400),
                                    ),
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(width: 8,),
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color:Color(0xFF000000),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 21),
                  InkWell(
                    onTap: (){
                      print('click button');
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFF18B884)
                      ),
                      child: Center(child: Image.asset('assets/images/filter_icon.png',fit: BoxFit.contain,width: 20,height: 20,)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi(index);
                  }),
            ],
          ),
        ),
      ),
    );
  }
  Column coursesUi(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.bookingDetailsScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: (blurBoxShadow),
                  //border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(AddSize.size15)),
              // width: AddSize.screenWidth,
              // height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size2),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      child:
                      Image.asset(
                        'assets/images/my_booking.png',
                        width: AddSize.size90,
                        height: 106,
                        fit: BoxFit.cover,
                      ),
                      // CachedNetworkImage(
                      //   width: AddSize.size110,
                      //   height: AddSize.size125 * 250,
                      //   fit: BoxFit.cover,
                      //   imageUrl: homeController.model.value.data!.popularCourses![index].image.toString(),
                      //   placeholder: (context, url) => SizedBox(),
                      //   errorWidget: (context, url, error) => SizedBox(),
                      // ),
                      //   Image.network(homeController.model.value.data!.popularCourses![index].image.toString(),
                      //     width: AddSize.size110,
                      //     height: AddSize.size125 * 250,
                      //     fit: BoxFit.cover,
                      //   ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Disco Event',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  const AddText(
                                    text: 'Success',
                                    textAlign: TextAlign.start,
                                    color: Color(0xFF0EDA5F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const[
                                    Padding(
                                      padding:  EdgeInsets.only(bottom: 4),
                                      child: Icon(Icons.calendar_month,color: Colors.grey,size: 16),
                                    ),
                                    SizedBox(width: 5,),
                                    AddText(text: '25-01-22 ',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                                    AddText(text: '(08:30 PM)',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 5),
                                  child: Icon(Icons.person_outlined,size: 16,color: Color(0xFF7D8396)),
                                ),
                                SizedBox(width: 2,),
                                AddText(
                                  text: '2 members',
                                  textAlign: TextAlign.start,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: const [
                                AddText(text: "\$30.00",color: Color(0xFF18B884),fontSize: 14,fontWeight: FontWeight.w600)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),

        SizedBox(
          height: AddSize.size10,
        ),
      ],
    );
  }
}
