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
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
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
          padding: const EdgeInsets.all(18),
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
                            padding:EdgeInsets.only(bottom: AddSize.size10),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                              child:Image.asset(
                                 'assets/images/Rectanglech.png',
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
                              fontWeight: FontWeight.w600,
                              fontSize: AddSize.font18,
                            ),
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
                        children: [
                          AddText(
                            text: '50+ bookings this week',
                            textAlign: TextAlign.start,
                            color: Color(0xFF18B884),
                            //fontWeight: FontWeight.w600,
                            fontSize: AddSize.font14,
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    AddText(text: 'Reviews',fontSize: 20,fontWeight: FontWeight.w600,),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        AddText(text: '4.8',fontSize: 16,fontWeight: FontWeight.w500,),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFFF8E30),
                            size: AddSize.size15,
                          ),
                        ),
                        SizedBox(width: 5,),
                        AddText(text: '(2500+)',fontSize: 16,fontWeight: FontWeight.w500,),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        AddText(text: 'Jack Lee',fontSize: 18,fontWeight: FontWeight.w600,),
                        SizedBox(width: 10,),
                        Icon(Icons.verified,color: Color(0xFF12C202),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    AddText(text: 'Lorem Ipsum is simply dummy text of the '
                        'printing and typesetting industry. Lorem Ipsum has been the.',fontWeight: FontWeight.w300,fontSize: 14,),
                    SizedBox(height: 5,),
                    AddText(text: 'See all reviews',decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 14,),
                    SizedBox(height: 30,),
                    AddText(text: 'Our Classes',fontSize: 18,fontWeight: FontWeight.w500),
                    SizedBox(height: 10,),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi1(index);
                        }),
                    AddText(text: 'About us',fontSize: 18,fontWeight: FontWeight.w600),
                    SizedBox(height: 20,),
                    AddText(text: 'Lorem Ipsum is simply dummy text of '
                        'the for printing and typesetting industry. '
                        'the Lorem Ipsum has been the. text of the in printing',fontWeight: FontWeight.w300,fontSize: 14,),
                    SizedBox(height: 5,),
                    AddText(text: 'Read more',decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 14,),
                    SizedBox(height: 50,),
                    AddText(text: 'Highlights',fontSize: 18,fontWeight: FontWeight.w600,),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Studio Dance',color: Color(0xFF534F4F))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Photo Studio',color: Color(0xFF534F4F),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Folk Dance',color: Color(0xFF534F4F))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Music Events',color: Color(0xFF534F4F))
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 45,),
                    Stack(
                      children: <Widget>[
                        Container(
                        child: Image.asset('assets/images/Rectangle23165.png'),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160,top: 70),
                          child: Icon(Icons.location_on_outlined,color: Color(0xFF004B93),size: 35,),
                        )
                      ]
                    ),
                    SizedBox(height: 20,),
                    Center(child: AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur")),
                    SizedBox(height: 45,),
                    AddText(text: 'Videos',fontWeight: FontWeight.w600,fontSize: 18,),
                    SizedBox(height: 20,),
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/images/Group1000003969.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 65),
                          child: Center(child: Icon(Icons.play_circle_outlined,color: Colors.white,size: 35,)),
                        ),
                      ]
                    ),
                    SizedBox(height: 20,),
                    Center(child: AddText(text: 'What to expect a Dance Studio')),
                    SizedBox(height: 50,),
                    AddText(text: 'Safety & Cleanliness',fontSize: 18,fontWeight: FontWeight.w600,),
                    SizedBox(height: 20,),
                    AddText(text: 'Provide by Studio Updated on 1/24/2022',fontWeight: FontWeight.w300),
                    SizedBox(height: 40,),
                    AddText(text: 'Health & Safety measures',fontSize: 18,fontWeight: FontWeight.w600,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Studio Dance',fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Photo Studio',fontWeight: FontWeight.w300)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Folk Dance',fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Music Events',fontWeight: FontWeight.w300)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Folk Dance',fontWeight: FontWeight.w300)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    AddText(text: 'See Details',fontWeight: FontWeight.w400,decoration: TextDecoration.underline,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  // Column coursesUi(int index) {
  //   return Column(
  //     children: [
  //       InkWell(
  //         onTap: () {
  //            Get.toNamed(MyRouter.studioClassScreen,);
  //           // arguments: [
  //           //   homeController.model.value.data!.popularCourses![index].id
  //           //       .toString()
  //           // ]);
  //         },
  //         child: Container(
  //             decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 boxShadow: (blurBoxShadow),
  //                 // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
  //                 borderRadius: BorderRadius.circular(AddSize.size15)),
  //             // width: AddSize.screenWidth,
  //             height: AddSize.screenHeight * .14,
  //             //margin: EdgeInsets.all(AddSize.size5),
  //             child: Padding(
  //               padding: EdgeInsets.all(AddSize.size10),
  //               child: Row(
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: const BorderRadius.only(
  //                       topLeft: Radius.circular(8.0),
  //                       topRight: Radius.circular(8.0),
  //                       bottomLeft: Radius.circular(8.0),
  //                       bottomRight: Radius.circular(8.0),
  //                     ),
  //                     child:
  //                     Image.asset(
  //                       'assets/images/Rectangle17.png',
  //                       width: AddSize.size100,
  //                       height: AddSize.size100,
  //                       fit: BoxFit.cover,
  //                     ),
  //                     // CachedNetworkImage(
  //                     //   width: AddSize.size110,
  //                     //   height: AddSize.size125 * 250,
  //                     //   fit: BoxFit.cover,
  //                     //   imageUrl: homeController.model.value.data!.popularCourses![index].image.toString(),
  //                     //   placeholder: (context, url) => SizedBox(),
  //                     //   errorWidget: (context, url, error) => SizedBox(),
  //                     // ),
  //                     //   Image.network(homeController.model.value.data!.popularCourses![index].image.toString(),
  //                     //     width: AddSize.size110,
  //                     //     height: AddSize.size125 * 250,
  //                     //     fit: BoxFit.cover,
  //                     //   ),
  //                   ),
  //                   SizedBox(
  //                     width: AddSize.size15,
  //                   ),
  //                   Expanded(
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(top: 15),
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           // SizedBox(
  //                           //   height: AddSize.size5,
  //                           // ),
  //                           Padding(
  //                             padding: const EdgeInsets.only(right: 8.0),
  //                             child: Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: AddText(
  //                                     text: 'Dance',
  //                                     textAlign: TextAlign.start,
  //                                     color: AppTheme.filtter.withOpacity(0.8),
  //                                     fontWeight: FontWeight.bold,
  //                                     fontSize: AddSize.font16,
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                           SizedBox(
  //                             height: AddSize.size8,
  //                           ),
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                             children: [
  //                               Row(
  //                                 children: const [
  //                                   Padding(
  //                                     padding:  EdgeInsets.only(bottom: 5),
  //                                     child: Icon(Icons.person_2_outlined,size: 20,color: Color(0xFF7D8396)),
  //                                   ),
  //                                   SizedBox(width: 2,),
  //                                   AddText(
  //                                     text: '6 to 10 Ages',
  //                                     textAlign: TextAlign.start,
  //                                     color: Color(0xFF7D8396),
  //                                     fontWeight: FontWeight.w400,
  //                                     fontSize: 14,
  //                                   ),
  //                                 ],
  //                               ),
  //                               Icon(Icons.arrow_forward_ios,size: 18,)
  //                             ],
  //                           ),
  //                           SizedBox(
  //                             height: AddSize.size8,
  //                           ),
  //                           Row(
  //                             children: [
  //                               //SizedBox(width: 8,),
  //                               Padding(
  //                                 padding: const EdgeInsets.only(top: 5),
  //                                 child: AddText(
  //                                   text: '\$10.00',
  //                                   textAlign: TextAlign.start,
  //                                   color: Color(0xFFC9002B),
  //                                   fontWeight: FontWeight.w600,
  //                                   fontSize: AddSize.font14,
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             )),
  //       ),
  //
  //       SizedBox(
  //         height: AddSize.size10,
  //       ),
  //     ],
  //   );
  // }
  Column coursesUi1(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioClassScreen);
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
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Folk Dance',
                                      textAlign: TextAlign.start,
                                      //color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
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
                              children:  [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 5),
                                  child: Icon(Icons.person_outlined,size: 20,color: Color(0xFF7D8396)),
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
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: [
                                AddText(text: "\$10.00",color: Color(0xFF18B884),)
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
