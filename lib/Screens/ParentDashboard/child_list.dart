import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/Router/my_router.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class ChildListScreen extends StatefulWidget {
  const ChildListScreen({Key? key}) : super(key: key);

  @override
  State<ChildListScreen> createState() => _ChildListScreenState();
}

class _ChildListScreenState extends State<ChildListScreen> {
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
        title: Padding(
          padding: const EdgeInsets.only(left: 85),
          child: Text("Child List",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return coursesUi1(index);
                  }),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Get.toNamed(MyRouter.addNewChildScreen);
                    },
                    child: Icon(Icons.add, color: Colors.white, size: 29,),
                    backgroundColor: AppTheme.buttonColor,
                    tooltip: 'Capture Picture',
                    elevation: 5,
                    splashColor: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
  Column coursesUi1(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Get.toNamed(MyRouter.studioScreen);
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
              height: AddSize.screenHeight * .15,
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
                        'assets/images/Rectangle32.png',
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
                        padding: const EdgeInsets.only(top: 30),
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
                                      text: 'Rahul Sharma',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: AddSize.font14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            Row(
                              //crossAxisAlignment:CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AddText(
                                  text: "5 years old",
                                  //textAlign: TextAlign.start,
                                  color: Color(0xFF7D8396),
                                  fontWeight: FontWeight.w400,
                                  fontSize: AddSize.font12,
                                ),
                                // SizedBox(
                                //   width: AddSize.size20,
                                // ),
                                Row(
                                  children:  [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFFD4D9FF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFE4E7FF),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.edit,color: Color(0xFF39439D),size: 17),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFFFFC2CF))
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFFFCFD9),
                                        minRadius: 13,
                                        maxRadius: 13,
                                        child: Icon(Icons.delete_forever,color: Color(0xFFC9002B),size: 17),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
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
