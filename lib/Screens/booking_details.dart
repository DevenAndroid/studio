import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar:  AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Booking Details",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi(index);
                  }),
              SizedBox(height: AddSize.size10,),
              AddText(
                text: "Child Details",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: AddSize.size10,),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Child Name',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Cargiver Name',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Email',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Phone',fontWeight: FontWeight.w500),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(text: 'Jack Smith',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: 'Alexendor',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                          ],
                        ),
                        //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                        //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                      ],
                    ),
                    SizedBox(height: AddSize.size40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Child Name',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Cargiver Name',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Email',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Phone',fontWeight: FontWeight.w500),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(text: 'Jack Smith',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: 'Alexendor',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                          ],
                        ),
                        //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                        //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Studio Details",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Studio Namw',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Booking Date',fontWeight: FontWeight.w500),
                              SizedBox(height: AddSize.size20,),
                              AddText(text: 'Class Location',fontWeight: FontWeight.w500),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(text: 'Jazz Dance',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                            SizedBox(height: AddSize.size20,),
                            AddText(text: '27-12-2022 - 08:30PM ',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size20,),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFFFD4B0),
                                    child: Icon(Icons.location_on_outlined,color: AppTheme.primaryColor)),
                                SizedBox(width: 8,),
                                AddText(text: 'Douglas, Cork, ',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                              ],
                            ),
                          ],
                        ),
                        //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                        //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size10,),
              //SizedBox(height: 45,),
              Center(
                child: Stack(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/Rectangle23165.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160,top: 70),
                        child: Icon(Icons.location_on_outlined,color: Color(0xFF39439D),size: 35,),
                      )
                    ]
                ),
              ),
              SizedBox(height: 20,),
              Center(child: AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur")),
              SizedBox(height: 45,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.leaveReviewScreen);
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
                  child: Center(child: AddText(text: 'Leave Review',color:Colors.white,fontWeight: FontWeight.w600))
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'Request Refund',color:AppTheme.buttonColor,fontWeight: FontWeight.w600))
              ),
              SizedBox(height: 20,),

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
            Get.toNamed(MyRouter.studioScreen);
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
                        padding: const EdgeInsets.only(top: 10),
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
                                      text: 'Folk Dance',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  AddText(
                                    text: 'Success',
                                    textAlign: TextAlign.start,
                                    color: Color(0xFF0EDA5F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: AddSize.font14,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size8,
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
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                ),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size8,
                            ),
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
