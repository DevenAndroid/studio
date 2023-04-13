import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:studio_live/Router/my_router.dart';

import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button.dart';
import '../widgets/dimentions.dart';

class StudioClassScreen extends StatefulWidget {
  const StudioClassScreen({Key? key}) : super(key: key);

  @override
  State<StudioClassScreen> createState() => _StudioClassScreenState();
}

class _StudioClassScreenState extends State<StudioClassScreen> {
  String ratingvalue = '';
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();


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
            child : const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text("Folk Dance",style: TextStyle(color: Colors.white)),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    borderRadius:
                    BorderRadius.circular(AddSize.size15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.30,
                          width: MediaQuery.of(context).size.width,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Swiper(
                              autoplay: false,
                              loop: false,
                              outer: false,
                              autoplayDisableOnInteraction: false,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset('assets/images/doctor_swiper.png');
                              },
                              // pagination: const SwiperPagination(),
                              control: const SwiperControl(
                                  size: 30,color: Colors.white,padding: EdgeInsets.all(15)),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 40,
                            left: 235,
                            right: 0,
                            bottom: 0,
                            child: Column(
                              children: [
                                Container(
                                  height: 32,
                                  width: 114,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(Icons.remove_red_eye,color: Color(0xFF6D85A0),),
                                        Text('505 View',style: TextStyle(color: Color(0xFF6D85A0),fontSize: 14,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                   Padding(
                     padding: const EdgeInsets.all(8),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment:
                           MainAxisAlignment.spaceBetween,
                           children: [
                             AddText(
                               text: "Yoga Classes",
                               //textAlign: TextAlign.start,
                               color: Colors.black,
                               fontWeight: FontWeight.w600,
                               fontSize: AddSize.font18,
                             ),
                             Container(
                               height: 25,
                               width: 74,
                               decoration: BoxDecoration(
                                 color: const Color(0xFF18B884),
                                 borderRadius: BorderRadius.circular(6)
                               ),
                               child: const Center(
                                 child:
                                 Text('Online',
                                   style: TextStyle(
                                     color: Color(0xFFFFFFFF),
                                     fontWeight: FontWeight.w600,
                                     fontSize: 14,
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                         SizedBox(
                           height: AddSize.size10,
                         ),
                         const Text('Hatha yoga,',style: TextStyle(
                           color: Color(0xFF195C9C) ,
                           fontWeight: FontWeight.w400,
                           fontSize: 15 ,
                         ),),
                         SizedBox(
                           height: AddSize.size10,
                         ),
                         Row(
                           children: const [
                             Padding(
                               padding:  EdgeInsets.only(bottom: 5),
                               child: Icon(Icons.person_outlined,size: 20,color: Color(0xFF7D8396)),
                             ),
                             SizedBox(width: 5 ),
                             AddText(
                               text: '6 to 10 Ages',
                               textAlign: TextAlign.start,
                               color: Color(0xFF7D8396),fontSize: 14,fontWeight: FontWeight.w400,
                             ),
                           ],
                         ),
                         SizedBox(
                           height: AddSize.size15,
                         ),
                         Row(
                           children:  [
                             Padding(
                               padding: const EdgeInsets.only(bottom: 7),
                               // child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                               child: Image.asset('assets/images/seat.png',height: 20,width: 20,),
                             ),
                            const SizedBox(width: 5,),
                            const AddText(text: '105 available seats',color: Color(0xFF7D8396),fontSize: 14,fontWeight: FontWeight.w400,),

                           ],
                         ),
                         SizedBox(
                           height: AddSize.size15,
                         ),
                         Row(
                           children: const [
                             Padding(
                               padding:  EdgeInsets.only(bottom: 7),
                               child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                             ),
                             SizedBox(width: 5,),
                             AddText(text: '25-01-22-',color: Color(0xFF7D8396),fontSize: 14,fontWeight: FontWeight.w400,),
                             AddText(text: '08:30 PM',color: Color(0xFF7D8396),fontSize: 14,fontWeight: FontWeight.w400,),
                           ],
                         ),
                         SizedBox(
                           height: AddSize.size15,
                         ),
                         Row(
                           children: const[
                             AddText(text: "\$30.00",color: AppTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: 16,)
                           ],
                         ),
                         SizedBox(
                           height: AddSize.size15,
                         ),

                        const Divider(
                           height: 1,
                           thickness: 0.5,
                           color: Color(0xFF39439D),
                         ),
                         const SizedBox(height: 20,),
                         const AddText(text: 'About Folk Dance',fontSize: 20,fontWeight: FontWeight.w600,),
                         const SizedBox(height: 20,),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children:  [
                            const AddText(text: 'Lorem Ipsum is simply dummy text of the for printing and typesetting industry. the Lorem Ipsum has been the. text of the in printing',fontSize: 16,color: Color(0xFF667182),fontWeight: FontWeight.w300,),
                            InkWell(
                              onTap: (){},
                              child: const Text(
                              'Read more',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:  Color(0xFF5B5E73),
                                decoration: TextDecoration.underline,
                              ),),
                            )
                           ],
                         ),
                       ],
                     ),
                   )
                  ],
                ),
              ),
             addHeight(AddSize.size10),
             Container(
               height: 255,
               decoration: BoxDecoration(
                   color: Colors.white,
                   boxShadow: blurBoxShadow,
                   borderRadius:
                   BorderRadius.circular(AddSize.size15)),
               child: Padding(
                 padding: const EdgeInsets.only(left:16.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     addHeight(AddSize.size15),
                     const Text('Highlights',style: TextStyle(
                       fontSize: 18,fontWeight: FontWeight.w600,
                       color: Color(0xFF1B233A)
                     ),),
                      addHeight(AddSize.size15),

                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Studio Dance',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Photo Studio',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(right: 30,top: 12),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Folk Dance',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Music Events',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                         ],
                       ),
                     ),
                     addHeight(AddSize.size12),
                     const Text('Amenities',style: TextStyle(
                         fontSize: 18,fontWeight: FontWeight.w600,
                         color: Color(0xFF1B233A)
                     ),),
                     Padding(
                       padding: const EdgeInsets.only(right: 87,top: 12),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Lockers',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Mats',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 69,top: 12),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Towels',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                           Row(
                             children: [
                               const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                               addWidth(AddSize.size13),
                               const Text('Parking',style: TextStyle(
                                   fontSize: 14,fontWeight: FontWeight.w400,
                                   color: Color(0xFF534F4F)
                               ),)
                             ],
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              addHeight(AddSize.size10),
              Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    borderRadius:
                    BorderRadius.circular(AddSize.size15)),
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addHeight(AddSize.size15),
                      const Text('Safety & Cleanliness',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w600,
                          color: Color(0xFF1B233A)
                      ),),
                      addHeight(AddSize.size8),
                      const Text('Provide by Studio Updated on 1/24/2022',style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w300,
                          color: Color(0xFF747474)
                      ),),
                      addHeight(AddSize.size25),
                      const Text('Health & Safety measures',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w600,
                          color: Color(0xFF1B233A)
                      ),),
                      addHeight(AddSize.size15),

                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Ventilation system',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Extra sanitation',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 34,top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Limited capacity',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),

                                const Text('contactless \ncheck in',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 87,top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Lockers',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Mats',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 69,top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Towels',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFFFA629),size: 20,),
                                addWidth(AddSize.size13),
                                const Text('Parking',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,
                                    color: Color(0xFF534F4F)
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      addHeight(AddSize.size20),
                      InkWell(
                        onTap: (){},
                        child: const Text(
                          'See Details',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color:  Color(0xFF5B5E73),
                          decoration: TextDecoration.underline,
                        ),),
                      ),
                      addHeight(AddSize.size20),

                    ],
                  ),
                ),
              ),
             const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    borderRadius:
                    BorderRadius.circular(AddSize.size15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddText(text: 'cancellation policy',fontSize: 18,fontWeight: FontWeight.w600,),
                          const SizedBox(height: 20,),
                          const AddText(text: 'Lorem Ipsum is simply dummy text of the for printing and typesetting industry. the Lorem Ipsum has been the. text of the in printing',fontSize: 16,color: Color(0xFF667182),fontWeight: FontWeight.w300,),
                          SizedBox(height: AddSize.size5,),
                           InkWell(onTap: (){},
                             child: Text(
                              'Read more',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:  Color(0xFF5B5E73),
                              decoration: TextDecoration.underline,
                          ),),
                           ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               addHeight(AddSize.size20),
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
                              loop: false,
                              outer: false,
                              autoplayDisableOnInteraction: false,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset('assets/images/Group1000003969.png');
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
                    Center(child: const AddText(text: 'What to expect a Dance Studio')),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              addHeight(AddSize.size20),
              ElevatedButton(onPressed: ()
              {
                 Get.toNamed(MyRouter.bookingScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(274, 56),
                  ),
                  child: const Center(child: AddText(text: 'Book Class',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),
              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
