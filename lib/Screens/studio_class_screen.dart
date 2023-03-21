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
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF8E30),
        leading: InkWell(onTap: (){
          Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
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
                                  'assets/images/Rectangle19.png',
                                  width: AddSize.size330 ,
                                  height: AddSize.size170,
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
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: AddText(
                              text: "Folk Dance",
                              //textAlign: TextAlign.start,
                              color: Color(0xFF004B93),
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
                      SizedBox(
                        height: AddSize.size15,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 8,),
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
              ),
              SizedBox(height: 20,),
              AddText(text: 'About Folk Dance',fontSize: 20,fontWeight: FontWeight.bold,),
              SizedBox(height: 20,),
              AddText(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five',fontSize: 17,color: Color(0xFF667182),fontWeight: FontWeight.w300,),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  ...List.generate(
                      1,
                          (index3) => Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets
                                  .all(AddSize
                                  .padding12),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                children: [
                                  AddText(
                                    text:
                                    'Overall Rating',
                                    color: AppTheme
                                        .userText
                                        .withOpacity(
                                        .5),
                                    fontWeight:
                                    FontWeight
                                        .w400,
                                    fontSize:
                                    AddSize
                                        .font14,
                                  ),
                                  addHeight(
                                      10),
                                  Row(
                                    children: [
                                      AddText(
                                        text: '4.8',
                                        color:
                                        AppTheme.filtter,
                                        fontWeight:
                                        FontWeight.w500,
                                        fontSize:
                                        AddSize.font10 * 4,
                                      ),
                                      addWidth(
                                          25),
                                      Column(
                                        children: [
                                          RatingBar.builder(
                                            updateOnDrag: false,
                                            tapOnlyMode: false,
                                            ignoreGestures: true,
                                           // initialRating: double.parse(""),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemSize: 20,
                                            itemCount: 5,
                                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              log(rating.toString());
                                            },
                                          ),
                                          addHeight(10),
                                          AddText(
                                            text: 'based on '
                                                // '${model1.value.data!.total.toString()}'
                                                ' reviews',
                                            color: AppTheme.userText.withOpacity(.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: AddSize.font14,
                                          ),
                                          SizedBox(
                                            height: AddSize.size5,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            addHeight(15),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    AddText(
                                      text:
                                      'Excellent',
                                      color: AppTheme
                                          .userText
                                          .withOpacity(.5),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize:
                                      AddSize.font16,
                                    ),
                                    SizedBox(
                                      height:
                                      AddSize.size10,
                                    ),
                                    AddText(
                                      text:
                                      'Good',
                                      color: AppTheme
                                          .userText
                                          .withOpacity(.5),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize:
                                      AddSize.font16,
                                    ),
                                    SizedBox(
                                      height:
                                      AddSize.size10,
                                    ),
                                    AddText(
                                      text:
                                      'Average',
                                      color: AppTheme
                                          .userText
                                          .withOpacity(.5),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize:
                                      AddSize.font16,
                                    ),
                                    SizedBox(
                                      height:
                                      AddSize.size10,
                                    ),
                                    AddText(
                                      text:
                                      'Below Average',
                                      color: AppTheme
                                          .userText
                                          .withOpacity(.5),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize:
                                      AddSize.font16,
                                    ),
                                    SizedBox(
                                      height:
                                      AddSize.size10,
                                    ),
                                    AddText(
                                      text:
                                      'Poor',
                                      color: AppTheme
                                          .userText
                                          .withOpacity(.5),
                                      fontWeight:
                                      FontWeight.w400,
                                      fontSize:
                                      AddSize.font16,
                                    ),
                                    SizedBox(
                                      height:
                                      AddSize.size10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: AddSize
                                      .size10,
                                ),
                                // Column(
                                //   children: [
                                //     ///excellent
                                //     LinearPercentIndicator(
                                //       width:
                                //       180,
                                //       animation:
                                //       true,
                                //       lineHeight:
                                //       5.0,
                                //       animationDuration:
                                //       2500,
                                //       percent:
                                //       double.parse("") /
                                //           100,
                                //       linearStrokeCap:
                                //       LinearStrokeCap.roundAll,
                                //       progressColor:
                                //       Colors.green,
                                //     ),
                                //     SizedBox(
                                //       height:
                                //       AddSize.size20,
                                //     ),
                                //     LinearPercentIndicator(
                                //       width:
                                //       180,
                                //       animation:
                                //       true,
                                //       lineHeight:
                                //       5.0,
                                //       animationDuration:
                                //       2500,
                                //       percent:
                                //       double.parse("") /
                                //           100,
                                //       linearStrokeCap:
                                //       LinearStrokeCap.roundAll,
                                //       progressColor:
                                //       Colors.greenAccent,
                                //     ),
                                //     SizedBox(
                                //       height:
                                //       AddSize.size20,
                                //     ),
                                //     LinearPercentIndicator(
                                //       width:
                                //       180,
                                //       animation:
                                //       true,
                                //       lineHeight:
                                //       5.0,
                                //       animationDuration:
                                //       2500,
                                //       percent:
                                //       double.parse("") /
                                //           100,
                                //       linearStrokeCap:
                                //       LinearStrokeCap.roundAll,
                                //       progressColor:
                                //       Colors.yellow,
                                //     ),
                                //     SizedBox(
                                //       height:
                                //       AddSize.size20,
                                //     ),
                                //     LinearPercentIndicator(
                                //       width:
                                //       180,
                                //       animation:
                                //       true,
                                //       lineHeight:
                                //       5.0,
                                //       animationDuration:
                                //       2500,
                                //       percent:
                                //       double.parse("") /
                                //           100,
                                //       linearStrokeCap:
                                //       LinearStrokeCap.roundAll,
                                //       progressColor:
                                //       Colors.orange,
                                //     ),
                                //     SizedBox(
                                //       height:
                                //       AddSize.size20,
                                //     ),
                                //     LinearPercentIndicator(
                                //       width:
                                //       180,
                                //       animation:
                                //       true,
                                //       lineHeight:
                                //       5.0,
                                //       animationDuration:
                                //       2500,
                                //       percent:
                                //       double.parse("") /
                                //           100,
                                //       linearStrokeCap:
                                //       LinearStrokeCap.roundAll,
                                //       progressColor:
                                //       Colors.red,
                                //     ),
                                //     SizedBox(
                                //       height:
                                //       AddSize.size15,
                                //     ),
                                //   ],
                                // )
                              ],
                            ),
                            // Divider(
                            //   thickness: .5,
                            //   color: AppTheme
                            //       .subText
                            //       .withOpacity(
                            //       .5),
                            // ),
                            // SizedBox(
                            //   height: AddSize
                            //       .size15,
                            // ),
                            // ListView.builder(
                            //   shrinkWrap:
                            //   true,
                            //   itemCount: 5,
                            //   physics:
                            //   const BouncingScrollPhysics(),
                            //   itemBuilder:
                            //       (BuildContext
                            //   context,
                            //       int index) {
                            //     return Column(
                            //       children: [
                            //         Row(
                            //           mainAxisAlignment:
                            //           MainAxisAlignment.start,
                            //           children: [
                            //             ClipRRect(
                            //               borderRadius:
                            //               const BorderRadius.all(Radius.circular(100)),
                            //               child:
                            //               Image.asset(
                            //                 'assets/images/onboarding1.png',
                            //                 width: AddSize.size50,
                            //                 height: AddSize.size50,
                            //                 fit: BoxFit.cover,
                            //               ),
                            //             ),
                            //             addWidth(
                            //                 25),
                            //             Expanded(
                            //               child:
                            //               Column(
                            //                 crossAxisAlignment: CrossAxisAlignment.start,
                            //                 children: [
                            //                   Row(
                            //                     mainAxisAlignment: MainAxisAlignment.start,
                            //                     crossAxisAlignment: CrossAxisAlignment.start,
                            //                     children: [
                            //                       Expanded(
                            //                         child: AddText(
                            //                           text: "",
                            //                           color: AppTheme.userText,
                            //                           fontWeight: FontWeight.w400,
                            //                           fontSize: AddSize.font18,
                            //                         ),
                            //                       ),
                            //                       SizedBox(
                            //                         width: AddSize.size10,
                            //                       ),
                            //                       Expanded(
                            //                         child: AddText(
                            //                           text: "",
                            //                           color: AppTheme.userText.withOpacity(.5),
                            //                           fontWeight: FontWeight.w400,
                            //                           fontSize: AddSize.font14,
                            //                         ),
                            //                       ),
                            //                     ],
                            //                   ),
                            //                   SizedBox(
                            //                     height: AddSize.size10,
                            //                   ),
                            //                   RatingBar.builder(
                            //                     updateOnDrag: false,
                            //                     tapOnlyMode: false,
                            //                     ignoreGestures: true,
                            //                     initialRating: double.parse(""),
                            //                     minRating: 1,
                            //                     direction: Axis.horizontal,
                            //                     allowHalfRating: false,
                            //                     itemSize: 20,
                            //                     itemCount: 5,
                            //                     itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            //                     itemBuilder: (context, _) => const Icon(
                            //                       Icons.star,
                            //                       color: Colors.amber,
                            //                     ),
                            //                     onRatingUpdate: (rating) {
                            //                       log(rating.toString());
                            //                       //log(model1.value.data!.reviews![index].rate.toString());
                            //                     },
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //         SizedBox(
                            //           height:
                            //           AddSize.size18,
                            //         ),
                            //         Padding(
                            //           padding: EdgeInsets.only(
                            //               left: AddSize.size10 *
                            //                   8,
                            //               bottom:
                            //               15),
                            //           child:
                            //           AddText(
                            //             text: "",
                            //             color: AppTheme
                            //                 .userText
                            //                 .withOpacity(.5),
                            //             fontWeight:
                            //             FontWeight.w400,
                            //             fontSize:
                            //             AddSize.font14,
                            //           ),
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // ),
                            // Divider(
                            //   thickness: .5,
                            //   color: AppTheme
                            //       .subText
                            //       .withOpacity(
                            //       .5),
                            // ),
                            // SizedBox(
                            //   height: AddSize
                            //       .size10,
                            // ),
                          ],
                        ),
                      )),
                  //model.value.lockedCourse == false? SizedBox.shrink():
                  // Column(
                  //   children: [
                  //     const Center(
                  //       child: Text(
                  //         'Leave Your Review',
                  //         style: TextStyle(
                  //             fontSize: 24,
                  //             fontWeight:
                  //             FontWeight
                  //                 .bold),
                  //       ),
                  //     ),
                  //     addHeight(10),
                  //     Center(
                  //       child: RatingBar
                  //           .builder(
                  //         initialRating: 1,
                  //         minRating: 1,
                  //         direction: Axis
                  //             .horizontal,
                  //         allowHalfRating:
                  //         true,
                  //         itemSize: 35,
                  //         itemCount: 5,
                  //         itemPadding:
                  //         const EdgeInsets
                  //             .symmetric(
                  //             horizontal:
                  //             4.0),
                  //         itemBuilder:
                  //             (context,
                  //             _) =>
                  //         const Icon(
                  //           Icons.star,
                  //           color: Colors
                  //               .amber,
                  //         ),
                  //         onRatingUpdate:
                  //             (rating) {
                  //           log(rating
                  //               .toString());
                  //           ratingvalue = rating
                  //               .toString();
                  //         },
                  //       ),
                  //     ),
                  //     addHeight(25),
                  //     const Text(
                  //       "Your Comment",
                  //       style: TextStyle(
                  //           fontWeight:
                  //           FontWeight
                  //               .w500,
                  //           fontSize: 16),
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     Form(
                  //       key: formKey,
                  //       child:
                  //       TextFormField(
                  //         controller:
                  //         commentController,
                  //         minLines: 3,
                  //         maxLines: 6,
                  //         validator:
                  //         MultiValidator([
                  //           RequiredValidator(
                  //               errorText:
                  //               'Comment  is required'),
                  //         ]),
                  //         decoration:
                  //         InputDecoration(
                  //           enabled: true,
                  //           hintText:
                  //           "Your comment....",
                  //           enabledBorder: OutlineInputBorder(
                  //               borderRadius:
                  //               BorderRadius.circular(
                  //                   10),
                  //               borderSide: BorderSide(
                  //                   color: Colors
                  //                       .grey
                  //                       .shade400)),
                  //           border: OutlineInputBorder(
                  //               borderRadius:
                  //               BorderRadius.circular(
                  //                   10),
                  //               borderSide: BorderSide(
                  //                   color: Colors
                  //                       .grey
                  //                       .shade400)),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       height:
                  //       AddSize.size20,
                  //     ),
                  //     Center(
                  //       child:
                  //       CommonButtonField('Submit',() {
                  //             if (formKey.currentState!.validate()) {
                  //               // OverlayEntryloader =Helpers.overlayLoader(context);
                  //               // Overlay.of(
                  //               //     context)!
                  //               //     .insert(
                  //               //     loader);
                  //               // submitReviewRepo(
                  //               //     Get.arguments[
                  //               //     0],
                  //               //     ratingvalue,
                  //               //     commentController
                  //               //         .text)
                  //               //     .then(
                  //               //         (value) {
                  //               //       if (value
                  //               //           .status ==
                  //               //           true) {
                  //               //         Helpers.hideLoader(
                  //               //             loader);
                  //               //         showToast(value
                  //               //             .message);
                  //               //
                  //               //         commentController
                  //               //             .clear();
                  //               //         //Get.toNamed(MyRouter.singleCourse);
                  //               //       } else {
                  //               //         Helpers.hideLoader(
                  //               //             loader);
                  //               //         showToast(value
                  //               //             .message
                  //               //             .toString()
                  //               //             .replaceAll(
                  //               //             "You can not submit review.",
                  //               //             'You have already submitted review'));
                  //               //       }
                  //               //     });
                  //             }
                  //           }, 2, 3),
                  //     )
                  //   ],
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
