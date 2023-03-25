import 'dart:developer';

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
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text("Folk Dance",style: TextStyle(color: Colors.white),),
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
                  padding: EdgeInsets.all(AddSize.size15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(bottom: AddSize.size15),
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                                child:
                                Image.asset(
                                  'assets/images/Rectangledance.png',
                                  width: AddSize.size330 ,
                                  height: AddSize.size170,
                                    fit: BoxFit.cover
                                )
                              // CachedNetworkImage(
                              //   imageUrl:model.value.data!.image.toString(),
                              //   width: AddSize.size100 * 4,
                              //   height: AddSize.size100 * 2,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          // Positioned(
                          //   child: Align(
                          //     alignment: Alignment.topRight,
                          //     child: Padding(
                          //       padding: EdgeInsets.all(AddSize.size10),
                          //       child: Container(
                          //           width: AddSize.size45,
                          //           height: AddSize.size45,
                          //           decoration: BoxDecoration(
                          //               borderRadius:BorderRadius.circular(100),
                          //               color: Colors.white.withOpacity(.8)),
                          //
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Column(
                         children: [
                           SizedBox(height: 5),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceBetween,
                             children: [
                               AddText(
                                 text: "Folk Dance",
                                 //textAlign: TextAlign.start,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: AddSize.font14,
                               ),
                             ],
                           ),
                           SizedBox(
                             height: AddSize.size10,
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
                               Row(
                                 children: const [
                                   Padding(
                                     padding:  EdgeInsets.only(bottom: 5),
                                     child: Icon(Icons.person_2_outlined,size: 20,color: Color(0xFF7D8396)),
                                   ),
                                   SizedBox(width: 2,),
                                   AddText(
                                     text: '25 Members',
                                     textAlign: TextAlign.start,
                                     color: Color(0xFF7D8396),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 14,
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(
                             height: AddSize.size15,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 7),
                                 child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                               ),
                               SizedBox(width: 5,),
                               AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                               AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                             ],
                           ),
                           SizedBox(
                             height: AddSize.size15,
                           ),
                           Row(
                             children: [
                               AddText(text: "\$30.00",color: AppTheme.primaryColor,)
                             ],
                           )
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(text: 'About Folk Dance',fontSize: 20,fontWeight: FontWeight.w600,),
                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          AddText(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five',fontSize: 16,color: Color(0xFF667182),fontWeight: FontWeight.w300,),
                        ],
                      ),
                    ),
                    SizedBox(height: 70,),
                  ],
                ),
              ),

              ElevatedButton(onPressed: ()
              {
                 Get.toNamed(MyRouter.bookingScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'Book Class',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),

            ],
          ),
        ),
      ),
    );
  }
}
