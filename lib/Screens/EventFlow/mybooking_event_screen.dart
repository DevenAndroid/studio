import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class MyBookingEventScreen extends StatefulWidget {
  const MyBookingEventScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingEventScreen> createState() => _MyBookingEventScreenState();
}

class _MyBookingEventScreenState extends State<MyBookingEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("My Previous Events",style: TextStyle(color: Colors.white),),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Icon(Icons.filter_alt,color: AppTheme.primaryColor,),
          ),
        )],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
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
            //Get.toNamed(MyRouter.studioScreen);
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
              height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size2),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size10),
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
                        'assets/images/Rectangle35.png',
                        width: AddSize.size90,
                        height: AddSize.size100,
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
                        padding: const EdgeInsets.only(top: 14),
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
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  AddText(
                                    text: 'Success',
                                    textAlign: TextAlign.start,
                                    color: Color(0xFF0EDA5F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: AddSize.font12,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 7),
                                  child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                ),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22 - ',color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                              ],
                            ),
                            // SizedBox(
                            //   height: 3,
                            // ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Color(0xFF7D8396),size: 20,),
                                SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.font12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size8,
                            ),
                            Row(
                              children: [
                                AddText(text: "\$30.00",color: AppTheme.primaryColor,)
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
