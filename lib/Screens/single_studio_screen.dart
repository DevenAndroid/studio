import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
import 'package:card_swiper/card_swiper.dart';

class StudioScreen extends StatefulWidget {
  const StudioScreen({Key? key}) : super(key: key);

  @override
  State<StudioScreen> createState() => _StudioScreenState();
}

class _StudioScreenState extends State<StudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
        },
            child: const Icon(Icons.arrow_back)),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 60),
        //   child: Text("Dance Studio",style: TextStyle(color: Colors.white),),
        // ),
        centerTitle: true,
        title: const Text("Dance Studio",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
               height: 480,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: (blurBoxShadow),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                       height: MediaQuery.of(context).size.height*0.25,
                       width: MediaQuery.of(context).size.width,
                       clipBehavior: Clip.antiAlias,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15)),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Swiper(
                           loop: false,
                           autoplay: false,
                           outer: false,
                           autoplayDisableOnInteraction: false,
                           itemCount: 3,
                           itemBuilder: (BuildContext context, int index) {
                             return Column(
                               children: [
                                 Image.asset('assets/images/doctor_swiper.png',fit: BoxFit.contain,),
                               //Text(assistants[])
                               ],
                             );

                             },
                           // pagination: const SwiperPagination(),
                           control: const SwiperControl(
                               size: 30,color: Colors.white,padding: EdgeInsets.all(20)),
                         ),
                       ),
                     ),
                    addHeight(AddSize.size13),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,right: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Dance Studio',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:  Colors.black),),
                          Spacer(),
                          Icon(Icons.location_on_outlined,color:  Colors.grey),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text('5 Km',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color:  Colors.grey),),
                          ),
                        ],
                      ),
                    ),
                       const SizedBox(height: 2),
                  const Padding(
                     padding:  EdgeInsets.only(left:18.0,right:18.0),
                     child:  Text('Folk Dance',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:  Color(0xFF004B93)),),
                   ),
                    addHeight(AddSize.size16),
                   const Padding(
                      padding: EdgeInsets.only(left: 18,right: 18),
                      child: Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Color(0xFF39439D),
                      ),
                    ),
                    addHeight(AddSize.size15),
                   const Padding(
                      padding:  EdgeInsets.only(left:18.0,right: 18.0),
                      child:  Text('About Us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:  Color(0xFF1B233A)),),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left:18.0,right: 18.0),
                      child:  Text('Lorem Ipsum is simply dummy text of the for printing and typesetting industry. the Lorem Ipsum has been the. text of the in printing',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color:  Color(0xFF667182)),),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
                      child:  TextButton(
                        onPressed: (){},
                        child: const Text(
                            'Read more',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color:  Color(0xFF5B5E73),
                          decoration: TextDecoration.underline,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(top: 13.0),
                child: Text('Our Classes',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                    color:  Color(0xFF1B233A),
        ),),
              ),
              addHeight(AddSize.size10),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi1(index);
                  }),
              Container(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:(blurBoxShadow),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AddText(text: 'Reviews',fontSize: 20,fontWeight: FontWeight.w600,),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          const AddText(text: '4.8',fontSize: 16,fontWeight: FontWeight.w500,),
                          const SizedBox(width: 5,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Icon(
                              Icons.star,
                              color: const Color(0xFFFF8E30),
                              size: AddSize.size15,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const AddText(text: '(2500+)',fontSize: 16,fontWeight: FontWeight.w500,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           AddText(text: 'Jack Lee',fontSize: 18,fontWeight: FontWeight.w600,),
                           SizedBox(width: 3,),
                           Icon(Icons.verified,color: Color(0xFF12C202),size: 14,)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const AddText(text: 'Lorem Ipsum is simply dummy text of the '
                          'printing and typesetting industry. Lorem Ipsum has been the.',fontWeight: FontWeight.w300,fontSize: 14,),
                      const SizedBox(height: 8,),
                      const AddText(text: 'See all reviews',decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 14,),
                    ],
                  ),
                ),
                ),
              const SizedBox(height: 10,),
              Container(
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:(blurBoxShadow),
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(child: Image.asset('assets/images/Rectangle23165.png',)),
                      const SizedBox(height: 20,),
                      AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur"),
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 30,),
              const AddText(text: 'Videos',fontWeight: FontWeight.w600,fontSize: 18,),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:(blurBoxShadow),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.25,
                          width: MediaQuery.of(context).size.width,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Swiper(
                              autoplay: false,
                              outer: false,
                              loop: false,
                              autoplayDisableOnInteraction: false,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset('assets/images/Group1000003969.png',fit: BoxFit.contain,);
                              },
                              // pagination: const SwiperPagination(),
                              control: const SwiperControl(
                                  size: 30,color: Colors.white,padding: EdgeInsets.all(15)),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 1,
                            left: 1,
                            right: 0,
                            bottom: 0,
                            child: Icon(Icons.play_circle_outlined,color: Colors.white,size: 40,)
                        ),

                      ],
                    ),
                    AddText(text: 'What to expect a Dance Studio'),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              const SizedBox(height: 30,),


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
             // height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Stack(
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
                          'assets/images/events_home.png',
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
                        Positioned(
                          right: 1,
                          top: 2,
                          child: InkWell(
                           onTap: (){},
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(
                           Icons.favorite_border,
                                  // color: AppTheme.primaryColor,
                                  color :  Color(0xFFC9002B),
                                size: 15,
                              ),
                            ),
                          ),
                        )
          ],
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
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
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children:  [
                                const Padding(
                                  padding:  EdgeInsets.only(bottom: 5),
                                  child: Icon(Icons.person_outlined,size: 20,color: Color(0xFF7D8396)),
                                ),
                                const SizedBox(width: 2,),
                                AddText(
                                  text: '6 to 10 Ages',
                                  textAlign: TextAlign.start,
                                  color: const Color(0xFF7D8396),
                                  fontWeight: FontWeight.w400,
                                  fontSize: AddSize.font12,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: const Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                ),
                                const SizedBox(width: 5,),
                                const AddText(text: '25-01-22-',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400,),
                                const AddText(text: '08:30 PM',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                const AddText(text: "\$10.00",color: Color(0xFF18B884),fontWeight: FontWeight.w600,fontSize: 14,)
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
