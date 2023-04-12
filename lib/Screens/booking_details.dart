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
            child : const Icon(Icons.arrow_back)),
        title: const Text("Booking Details",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12,),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                   children: const[
                       Text('Booking ID:',style: TextStyle(
                         color: Color(0xFF1B233A),
                         fontWeight: FontWeight.w500,
                         fontSize: 12,
                       ),),
                      SizedBox(width: 6,),
                     Text('#2587412',style: TextStyle(
                       color: Color(0xFF18B884),
                       fontWeight: FontWeight.w400,
                       fontSize: 12,
                     ),),
                   ],
                ),
              ),
              const SizedBox(height: 9,),
              ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi(index);
                  }),
              SizedBox(height: AddSize.size10,),
              const AddText(
                text: "Child Details",
                fontSize: 16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: AddSize.size10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
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
                                const AddText(text: 'Child Name',fontWeight: FontWeight.w500),
                                SizedBox(height: AddSize.size20,),
                                const AddText(text: 'Cargiver Name',fontWeight: FontWeight.w500),
                                SizedBox(height: AddSize.size20,),
                                const AddText(text: 'Phone',fontWeight: FontWeight.w500),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AddText(text: 'Jack Smith',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                              SizedBox(height: AddSize.size20,),
                              const AddText(text: 'Alexendor',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                              SizedBox(height: AddSize.size20,),
                              const AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                            ],
                          ),
                          //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                          //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
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
                                const AddText(text: 'Child Name',fontWeight: FontWeight.w500),
                                SizedBox(height: AddSize.size20,),
                                const AddText(text: 'Cargiver Name',fontWeight: FontWeight.w500),
                                SizedBox(height: AddSize.size20,),
                                const AddText(text: 'Phone',fontWeight: FontWeight.w500),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AddText(text: 'Jack Smith',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                              SizedBox(height: AddSize.size20,),
                              const AddText(text: 'Alexendor',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                              SizedBox(height: AddSize.size20,),
                              const AddText(text: '987-654-3210',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                            ],
                          ),
                          //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                          //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size20,),
              //SizedBox(height: 45,),
              Center(
                child: Stack(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/Rectangle23165.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 160,top: 70),
                        child: Icon(Icons.location_on_outlined,color: Color(0xFF39439D),size: 35,),
                      )
                    ]
                ),
              ),
              // const SizedBox(height: 20,),
              Container(
                height: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6)),
                  color: Colors.white,
                  border: Border.all(width: 1,color: const Color(0xFFE3E3E3))
                ),
                  child: const Center(child: AddText(text: "18225 Biscayne Blvd, Aventura, Jaipur"))),
              const SizedBox(height: 45,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.reviewEventScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'Leave Review',color:Colors.white,fontWeight: FontWeight.w600))
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'Request Refund',color:AppTheme.buttonColor,fontWeight: FontWeight.w600))
              ),
              const SizedBox(height: 20,),

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
            Get.toNamed(MyRouter.bookingDetailsScreen);
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
              // height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size2),
              child: Padding(
                padding: const EdgeInsets.all(8),
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
                        'assets/images/my_booking.png',
                        width: AddSize.size90,
                        height: 106,
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
                        padding: const EdgeInsets.only(top: 8),
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
                                      text: 'Disco Event',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  const AddText(
                                    text: 'Success',
                                    textAlign: TextAlign.start,
                                    color: Color(0xFF0EDA5F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const[
                                    Padding(
                                      padding:  EdgeInsets.only(bottom: 4),
                                      child: Icon(Icons.calendar_month,color: Colors.grey,size: 16),
                                    ),
                                    SizedBox(width: 5,),
                                    AddText(text: '25-01-22 ',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                                    AddText(text: '(08:30 PM)',color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 5),
                                  child: Icon(Icons.person_outlined,size: 16,color: Color(0xFF7D8396)),
                                ),
                                SizedBox(width: 2,),
                                AddText(
                                  text: '2 members',
                                  textAlign: TextAlign.start,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: const [
                                AddText(text: "\$30.00",color: Color(0xFF18B884),fontSize: 14,fontWeight: FontWeight.w600)
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
