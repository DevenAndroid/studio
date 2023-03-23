import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/app_theme.dart';

import '../Router/my_router.dart';
import '../widgets/common_searchbar.dart';
import '../widgets/dimentions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppTheme.buttonColor
                      ),child: Image.asset("assets/images/9057028.png"),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(text: 'Location'),
                      SizedBox(height: 5,),
                      AddText(text: '184 Main Colins  Street....',color: Colors.grey,fontSize: 13,),
                    ],
                  ),
                  SizedBox(width: 45,),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                         ),
                      child: Image.asset("assets/images/Ellipse2.png")
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(AddSize.padding10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xFF7D9FB8))),
                    child: Icon(Icons.notifications_none,color: Color(0xFF7D9FB8),)
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: SearchBar(
                        onFieldSubmit: (String value) {
                          // searchController.name.value = value;
                          // searchController.getData(context);
                        },
                        title: 'Search any course',
                        onPressed: () {}),
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset('assets/images/Group1000003967.png')
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AddText(text: 'Exploring Upcomming Studio',fontSize: 18,fontWeight: FontWeight.w500,),
              ),
              SizedBox(height: 10,),
              Container(
                height: AddSize.screenHeight * .34,
                decoration: BoxDecoration(boxShadow: blurBoxShadow),
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(MyRouter.studioScreen);
                          // Get.toNamed(MyRouter.paidCourse,
                          //     arguments: [
                          //       homeController.model.value.data!
                          //           .courses![index].id
                          //           .toString()
                          //     ]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: blurBoxShadow,
                              borderRadius: BorderRadius.circular(
                                  AddSize.size15)),
                          // width: AddSize.screenWidth,
                          height: AddSize.screenHeight * .51,
                          width: AddSize.screenWidth * .6,
                          margin: EdgeInsets.all(AddSize.size5),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: AddSize.size10),
                                  child: ClipRRect(
                                    borderRadius:
                                    const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                      bottomLeft:
                                      Radius.circular(8.0),
                                      bottomRight:
                                      Radius.circular(8.0),
                                    ),
                                    child:Image.asset('assets/images/Rectangle11.png',
                                            width: AddSize.size300,
                                            height: AddSize.size125,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),

                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: AddText(
                                        text: "Dance Studio",
                                        //textAlign: TextAlign.start,
                                        color: AppTheme.filtter
                                            .withOpacity(0.8),
                                        fontWeight: FontWeight.bold,
                                        fontSize: AddSize.font14,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: AddSize.size20,
                                    // ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: AddSize.size20,
                                    ),
                                    SizedBox(
                                        width: AddSize.size5),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: AddSize.size5),
                                      child: AddText(
                                        text:'4.9',
                                        color: Colors.amber,
                                        fontWeight:
                                        FontWeight.w600,
                                        fontSize:
                                        AddSize.font16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AddSize.size15,
                                ),
                                Row(
                                  //crossAxisAlignment:CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    AddText(
                                      text: "Folk Dance",
                                      //textAlign: TextAlign.start,
                                      color: Color(0xFF004B93),
                                      //fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font12,
                                    ),
                                    // SizedBox(
                                    //   width: AddSize.size20,
                                    // ),
                                    Row(
                                      children:  [
                                        Padding(
                                          padding:  EdgeInsets.only(bottom: 5),
                                          child: Icon(Icons.person_2_outlined,size: 20,color: Color(0xFF7D8396)),
                                        ),
                                        SizedBox(width: 2,),
                                        AddText(
                                          text: '6 to 10 Ages',
                                          textAlign: TextAlign.start,
                                          color: Color(0xFF7D8396),
                                          fontWeight: FontWeight.w400,
                                          fontSize: AddSize.font12,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AddSize.size20,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: Color(0xFF004B93),),
                                    SizedBox(width: 8,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: AddText(
                                        text: '5 km',
                                        textAlign: TextAlign.start,
                                        color: AppTheme.userText.withOpacity(.4),
                                        //fontWeight: FontWeight.w600,
                                        fontSize: AddSize.font14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: AddText(
                      text: 'Upcoming Booking',
                      fontSize: AddSize.font18,
                      color: AppTheme.userText,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //homeController.currentTab.value = 0;
                      //Get.toNamed(MyRouter.courseScreen);
                    },
                    child: AddText(
                      text: 'View All',
                      fontSize: AddSize.font16,
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              //SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi1(index);
                        }),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: AddText(
                      text: 'Popular Events',
                      fontSize: AddSize.font18,
                      color: AppTheme.userText,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //homeController.currentTab.value = 0;
                      //Get.toNamed(MyRouter.courseScreen);
                    },
                    child: AddText(
                      text: 'View All',
                      fontSize: AddSize.font16,
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi(index);
                        }),
                  ],
                ),
              ),
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
            Get.toNamed(MyRouter.studioListScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: (blurBoxShadow),
                  // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size5),
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
                        'assets/images/Rectangle18.png',
                        width: AddSize.size100,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AddText(
                                    text: 'Pool Event',
                                    textAlign: TextAlign.start,
                                    // color: AppTheme.filtter.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: AddSize.font14,
                                  ),
                                 Row(
                                   children: [
                                     Icon(
                                       Icons.star,
                                       color: Colors.amber,
                                       size: AddSize.size20,
                                     ),
                                     SizedBox(
                                         width: AddSize.size5),
                                     Padding(
                                       padding: EdgeInsets.only(
                                           top: AddSize.size5),
                                       child: AddText(
                                         text:'4.9',
                                         color: Colors.amber,
                                         fontWeight:
                                         FontWeight.w600,
                                         fontSize:AddSize.font14,
                                       ),
                                     ),
                                   ],
                                 )
                                ],
                              ),
                            ),
                            SizedBox(height: 6,),
                            Row(
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.grey,),
                                SizedBox(width: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                AddText(text: "30.00",color: AppTheme.primaryColor,)
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
  Column coursesUi1(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioListScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: (blurBoxShadow),
                  // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size5),
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
                        'assets/images/Rectangleyoga.png',
                        width: AddSize.size100,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Dance Class',
                                      textAlign: TextAlign.start,
                                     // color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size20,
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: AddSize.size5),
                                    child: AddText(
                                      text:'4.9',
                                      color: Colors.amber,
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize:AddSize.font14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6,),
                            Row(
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.grey,),
                                SizedBox(width: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                AddText(text: "30.00",color: AppTheme.primaryColor,)
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
