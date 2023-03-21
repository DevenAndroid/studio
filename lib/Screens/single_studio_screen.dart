import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
class StudioScreen extends StatefulWidget {
  const StudioScreen({Key? key}) : super(key: key);

  @override
  State<StudioScreen> createState() => _StudioScreenState();
}

class _StudioScreenState extends State<StudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF8E30),
        leading: InkWell(onTap: (){
          Get.toNamed(MyRouter.homeScreen);
        },
            child: Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text("Dance Studio",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    borderRadius:
                    BorderRadius.circular(AddSize.size15)),
                child: Padding(
                  padding: EdgeInsets.all(AddSize.size10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(bottom: AddSize.size10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                              child:
                              Image.asset(
                                 'assets/images/Rectangle19.png',
                                 width: AddSize.size340 ,
                                 height: AddSize.size170,
                                fit: BoxFit.cover,

                              )
                              // CachedNetworkImage(
                              //   imageUrl:model.value.data!.image.toString(),
                              //   width: AddSize.size100 * 4,
                              //   height: AddSize.size100 * 2,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(AddSize.size10),
                                  child: Container(
                                      width: AddSize.size20,
                                      height: AddSize.size20,
                                      decoration: BoxDecoration(
                                          borderRadius:BorderRadius.circular(5),
                                          color: Colors.white.withOpacity(.8)),
                                    child: InkWell(onTap: (){},
                                        child: Icon(Icons.chevron_left,color: Colors.grey,)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(AddSize.size10),
                                  child: Container(
                                    width: AddSize.size20,
                                    height: AddSize.size20,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(5),
                                        color: Colors.white.withOpacity(.8)),
                                    child: InkWell(onTap: (){},
                                        child: Icon(Icons.chevron_right,color: Colors.grey,)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
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
                        height: AddSize.size10,
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
                      SizedBox(
                        height: AddSize.size15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              AddText(text: 'About Studio',fontSize: 20,fontWeight: FontWeight.bold,),
              SizedBox(height: 20,),
              AddText(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been'
                  ' the industry\'s standard dummy text ever since',fontSize: 16,color: Color(0xFF667182),fontWeight: FontWeight.w400,),
              SizedBox(height: 20,),

              AddText(text: 'Classes',fontSize: 20,),
              SizedBox(height: 20,),

              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi(index);
                  })


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
             Get.toNamed(MyRouter.studioClassScreen,);
            // arguments: [
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
              height: AddSize.screenHeight * .14,
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
                        'assets/images/Rectangle17.png',
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
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(
                            //   height: AddSize.size5,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Dance',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
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
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,size: 18,)
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size8,
                            ),
                            Row(
                              children: [
                                //SizedBox(width: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '\$10.00',
                                    textAlign: TextAlign.start,
                                    color: Color(0xFFC9002B),
                                    fontWeight: FontWeight.w600,
                                    fontSize: AddSize.font14,
                                  ),
                                ),
                              ],
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
