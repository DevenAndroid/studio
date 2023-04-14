import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class MyBookingDetailsEventScreen extends StatefulWidget {
  const MyBookingDetailsEventScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingDetailsEventScreen> createState() => _MyBookingDetailsEventScreenState();
}

class _MyBookingDetailsEventScreenState extends State<MyBookingDetailsEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Text("My Event Details",style: TextStyle(color: Colors.white),),
        centerTitle: true,
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
                                  text: "Disco Event",
                                  //textAlign: TextAlign.start,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AddSize.font14,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: Color(0xFF7D8396),size: 20,),
                                    SizedBox(width: 5,),
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
                                      child: Icon(Icons.chair_outlined,size: 20,color: Color(0xFF68B554)),
                                    ),
                                    SizedBox(width: 5,),
                                    AddText(
                                      text: '105 Total Booking',
                                      textAlign: TextAlign.start,
                                      color: Color(0xFF68B554),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                                AddText(text: "\$30.00",color: AppTheme.primaryColor,)

                              ],
                            ),
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            // Row(
                            //   children: [
                            //     AddText(text: "\$30.00",color: AppTheme.primaryColor,)
                            //   ],
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Stack(
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/images/Rectangle23165.png',width: AddSize.screenWidth,),
                    ),

                  ]
              ),
              SizedBox(height: 20,),
              Center(child: AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur")),
            ],
          ),
        ),
      ),
    );
  }
}
