import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class SavedPlacesScreen extends StatefulWidget {
  const SavedPlacesScreen({Key? key}) : super(key: key);

  @override
  State<SavedPlacesScreen> createState() => _SavedPlacesScreenState();
}

class _SavedPlacesScreenState extends State<SavedPlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title:  Text("My Wishlist",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi(index);
                  }),
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
                        Positioned(
                          right: 1,
                          top: 2,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 23,
                              width: 23,
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
                                const Icon(Icons.calendar_month,color: Colors.grey,size: 20),
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
