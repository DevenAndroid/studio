import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class DiscoEventScreen extends StatefulWidget {
  const DiscoEventScreen({Key? key}) : super(key: key);

  @override
  State<DiscoEventScreen> createState() => _DiscoEventScreenState();
}

class _DiscoEventScreenState extends State<DiscoEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("Disco Event",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
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
                                    'assets/images/Rectangle36.png',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding:  EdgeInsets.only(bottom: 5),
                                      child: Icon(Icons.person_outlined,size: 20,color: Color(0xFF7D8396)),
                                    ),
                                    SizedBox(width: 5,),
                                    AddText(
                                      text: '25 Total Booked',
                                      textAlign: TextAlign.start,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                                // Row(
                                //   children: const [
                                //     Padding(
                                //       padding:  EdgeInsets.only(bottom: 5),
                                //       child: Icon(Icons.person_2_outlined,size: 20,color: Color(0xFF7D8396)),
                                //     ),
                                //     SizedBox(width: 2,),
                                //     AddText(
                                //       text: '25 Members',
                                //       textAlign: TextAlign.start,
                                //       color: Color(0xFF7D8396),
                                //       fontWeight: FontWeight.w400,
                                //       fontSize: 14,
                                //     ),
                                //   ],
                                // ),
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(text: 'About Us',fontSize: 20,fontWeight: FontWeight.w600,),
                    SizedBox(height: 20,),
                    AddText(text: 'Lorem Ipsum is simply dummy text of the '
                        'printing and typesetting industry. Lorem Ipsum has been the.',fontWeight: FontWeight.w300,fontSize: 14,height: 1.5,),
                    SizedBox(height: 5,),
                    AddText(text: 'See all reviews',decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 14,),

                    SizedBox(height: 40,),
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
                        'printing and typesetting industry. Lorem Ipsum has been the.',fontWeight: FontWeight.w300,fontSize: 14,height: 1.5,),
                    SizedBox(height: 5,),
                    AddText(text: 'See all reviews',decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 14,),
                    // AddText(text: 'Our Classes',fontSize: 18,fontWeight: FontWeight.w500),
                    // SizedBox(height: 10,),
                    // ListView.builder(
                    //     itemCount: 3,
                    //     shrinkWrap: true,
                    //     physics: const BouncingScrollPhysics(),
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return coursesUi1(index);
                    //     }),
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
                            AddText(text: 'Studio Dance',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Photo Studio',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
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
                            AddText(text: 'Folk Dance',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Music Events',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 30,),
                    AddText(text: 'Amenties',fontSize: 18,fontWeight: FontWeight.w600,),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Studio Dance',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Photo Studio',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
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
                            AddText(text: 'Folk Dance',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,color: AppTheme.primaryColor,),
                            SizedBox(width: 5,),
                            AddText(text: 'Music Events',color: Color(0xFF534F4F),fontWeight: FontWeight.w300)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 45,),
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
                    SizedBox(height: 20,),
                    AddText(text: 'See Details',fontWeight: FontWeight.w400,decoration: TextDecoration.underline,),
                    SizedBox(height: 30,),

                    Stack(
                        children: <Widget>[
                          Container(
                            child: Image.asset('assets/images/Rectangle23165.png'),
                          ),

                        ]
                    ),
                    SizedBox(height: 20,),
                    AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur"),
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
                    AddText(text: 'What to expect a Dance Studio'),
                    SizedBox(height: 50,),
                    ElevatedButton(onPressed: ()
                    {
                      // Get.toNamed(MyRouter.editProfileScreen);
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: AppTheme.buttonColor,
                            ),
                          ),
                          minimumSize: Size(340, 60),
                        ),
                        child: Center(child: AddText(text: 'Edit Class',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
