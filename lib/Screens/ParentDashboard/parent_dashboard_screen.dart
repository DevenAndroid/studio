import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../../Router/my_router.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_searchbar.dart';
import '../../widgets/dimentions.dart';
class ParentDashboardScreen extends StatefulWidget {
  const ParentDashboardScreen({Key? key}) : super(key: key);

  @override
  State<ParentDashboardScreen> createState() => _ParentDashboardScreenState();
}

class _ParentDashboardScreenState extends State<ParentDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        AddText(text: 'Welcome',color: Color(0xFF6E7793),fontSize: 12,),
                        SizedBox(height: 5,),
                        AddText(text: 'Jacky Smith',color: Color(0xFF1B233A),fontSize: 20,fontWeight: FontWeight.w600,),
                      ],
                    ),
                    SizedBox(width: 45,),
                    // Container(
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       color: Colors.white,
                    //     ),
                    //     child: Image.asset("assets/images/Ellipse2.png")
                    // ),
                    SizedBox(width: 10),
                    // Container(
                    //     padding: EdgeInsets.all(AddSize.padding10),
                    //     decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         color: Colors.white,
                    //         border: Border.all(color: Color(0xFF7D9FB8))),
                    //     child: Icon(Icons.notifications_none,color: Color(0xFF7D9FB8),)
                    // ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: SearchBar(
                          onFieldSubmit: (String value) {
                            // searchController.name.value = value;
                            // searchController.getData(context);
                          },
                          title: 'Search here',
                          onPressed: () {}),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1B233A))
                      ),
                      child: CircleAvatar(
                          radius: 25,
                          child: Image.asset('assets/images/Group1000003967.png')
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    AddText(text: 'My Booking',fontWeight: FontWeight.w500,fontSize: 18,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: AddSize.screenHeight * .34,
                    decoration: BoxDecoration(boxShadow: blurBoxShadow),
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                             // Get.toNamed(MyRouter.studioScreen);
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

                                   // SizedBox(height: 2,),
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
                                            AddSize.font12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: AddSize.size10,
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

                                      ],
                                    ),
                                    SizedBox(
                                      height: AddSize.size10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
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
                                                fontSize: AddSize.font14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: AddSize.size10,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 6),
                                          child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                        ),
                                        SizedBox(width: 5,),
                                        AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                        AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: AddText(
                        text: 'Previous Booking',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return coursesUi(index);
                      }),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: AddText(
                        text: 'My Child',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return coursesUi1(index);
                      }),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: AddText(
                        text: 'My Caregiver',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return coursesUi2(index);
                      }),
                ),
              ],
            ),
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
           // Get.toNamed(MyRouter.studioScreen);
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
                        'assets/images/Rectangle100.png',
                        width: AddSize.size90,
                        height: AddSize.size90,
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
                        padding: const EdgeInsets.only(top: 15),
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
                                      text: 'Dance Studio',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size16,
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
                                      AddSize.font12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size10,
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
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
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
                                    fontSize: AddSize.font14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
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
  Column coursesUi1(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.childListScreen);
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
              height: AddSize.screenHeight * .15,
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
                        'assets/images/Rectangle31.png',
                        width: AddSize.size90,
                        height: AddSize.size90,
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
                        padding: const EdgeInsets.only(top: 30),
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
                                      text: 'Rahul Sharma',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            Row(
                              //crossAxisAlignment:CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AddText(
                                  text: "5 years old",
                                  //textAlign: TextAlign.start,
                                  color: Color(0xFF7D8396),
                                  fontWeight: FontWeight.w400,
                                  fontSize: AddSize.font12,
                                ),
                                // SizedBox(
                                //   width: AddSize.size20,
                                // ),
                                Row(
                                  children:  [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Color(0xFFD4D9FF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFE4E7FF),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.edit,color: Color(0xFF39439D),size: 17),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Color(0xFFFFC2CF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFFCFD9),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.delete_forever,color: Color(0xFFC9002B),size: 17),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
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
  Column coursesUi2(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
             Get.toNamed(MyRouter.caregiverListScreen);
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
              height: AddSize.screenHeight * .15,
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
                        'assets/images/Rectangle30.png',
                        width: AddSize.size90,
                        height: AddSize.size90,
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
                        padding: const EdgeInsets.only(top: 30),
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
                                      text: 'Jacky Smith',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            Row(
                              //crossAxisAlignment:CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone,size: 17,color: Color(0xFF39439D),),
                                    SizedBox(width: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: AddText(
                                        text: "987-654-3210",
                                        //textAlign: TextAlign.start,
                                        color: Color(0xFF7D8396),
                                        fontWeight: FontWeight.w400,
                                        fontSize: AddSize.font12,
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   width: AddSize.size20,
                                // ),
                                Row(
                                  children:  [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFFD4D9FF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFE4E7FF),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.edit,color: Color(0xFF39439D),size: 17),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFFFFC2CF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFFCFD9),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.delete_forever,color: Color(0xFFC9002B),size: 17),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
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
