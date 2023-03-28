import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Router/my_router.dart';
import '../widgets/common_searchbar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dimentions.dart';
import '../widgets/size_configre.dart';
import '../widgets/string_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _drawerTile(
      {required bool active,
        required String title,
        required Icon icon,
        required VoidCallback onTap}) {
    return ListTile(
      selectedTileColor: AppTheme.etBgColor,
      leading: icon,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: active ? const Color(0xFF939393) : Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: active ? onTap : null,
    );
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: (){
                        Scaffold.of(context).openDrawer();
                        print('open drawer');
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFFF8E30)
                        ),
                        child: SvgPicture.asset('assets/images/9057028_menu_left_icon (2) 1.svg',fit: BoxFit.none,),
                        // child: Image.asset("assets/images/9057028.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       AddText(text: 'Location',fontWeight: FontWeight.w500,fontSize: 13,),
                       SizedBox(height: 5,),
                       AddText(text: '184 Main Colins  Street....',color: Colors.grey,fontSize: 13,),
                    ],
                  ),
                  const SizedBox(width: 45,),
                  const Spacer(),
                InkWell(
                  onTap: (){
                    _dialogBuilder(context);
                  },
                    child: Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF1B233A),
                           ),
                        child: SvgPicture.asset('assets/images/setting-4.svg',fit: BoxFit.none,),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                      height: 36,
                      width: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: const Color(0xFF7D9FB8))),
                    child: Center(child:SvgPicture.asset('assets/images/Group 180.svg',fit: BoxFit.none,),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child:  AddText(text: 'Popular Studio',fontSize: 18,fontWeight: FontWeight.w500,),
                  ),
                  TextButton(onPressed: (){}, child:AddText(
                    text: 'View All',
                    fontSize: AddSize.font16,
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.w500,
                  ), ),
                ],
              ),
              const SizedBox(height: 10,),
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
                            const EdgeInsets.fromLTRB(10, 10, 10, 10),
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

                                const SizedBox(height: 5,),
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
                                      color: const Color(0xFF004B93),
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
                                    const Icon(Icons.location_on_outlined,color: Color(0xFF004B93),size: 20,),
                                    const SizedBox(width: 5,),
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
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: AddText(
                      text: 'Popular Classes',
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
                padding: const EdgeInsets.all(4),
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

              const SizedBox(height: 20,),
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
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi2(index);
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: AddText(
                      text: 'Upcomming Classes',
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
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi3(index);
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
                            const SizedBox(height: 6,),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                const SizedBox(width: 5,),
                                const AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                const AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,),
                                const SizedBox(width: 8,),
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
                                const AddText(text: "30.00",color: AppTheme.primaryColor,)
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
                  color: const Color(0xFFF6F6F6),
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
                                      fontSize:AddSize.font12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 6),
                                  child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                ),
                                const SizedBox(width: 5,),
                                const AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                const AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                                const SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                const AddText(text: "\$30.00",color: AppTheme.primaryColor,)
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
  Column coursesUi2(int index) {
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
                  color: const Color(0xFFF6F6F6),
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
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Pool Event',
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
                                      fontSize:AddSize.font12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                const SizedBox(width: 5,),
                                const AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                const AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                                const SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                const AddText(text: " \$ 30.00",color: AppTheme.primaryColor,)
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
  Column coursesUi3(int index) {
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
                  color: const Color(0xFFF6F6F6),
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
                        'assets/images/Rectanglech.png',
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
                                      text: 'Pool Event',
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
                                      fontSize:AddSize.font12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                const SizedBox(width: 5,),
                                const AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                const AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                                const SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                const AddText(text: " \$ 30.00",color: AppTheme.primaryColor,)
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

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              _showDatePicker(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Date'),
                InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                  onTap: (){
                    // _showDatePicker(context);

                  },
                )
              ],
            ),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
            Get.back();
            _distance(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Distance'),
                InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                  onTap: (){
                    _distance(context);
                  },
                )
              ],
            ),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              _category(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Category'),
                 InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                   onTap: (){
                     _category(context);
                   },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}
Future<void> _showDatePicker (BuildContext context) {
  return showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025),     builder: (context,child){
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.orange,
      ),
      child: child!,
    );
  },);

}
Future<void> _distance (BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        RangeValues values = RangeValues(1, 100);
        return SimpleDialog(
            title: const Text('Distance',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,),),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            children: <Widget>[
              SimpleDialogOption(
                child:  Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 8,
                        width: 231,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF8E30),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFF1E5),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      Text('1km',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF657074)),),
                    Text('10km',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF657074)),),

                  ],
                ),
              )
            ]);
      }
  );
}
Future<void> _category (BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Classes'),
              ),
              const Divider(thickness: 1,),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Events'),
              ),
        ],
        );
      }
  );
}