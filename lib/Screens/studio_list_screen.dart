import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class StudioListScreen extends StatefulWidget {
  const StudioListScreen({Key? key}) : super(key: key);

  @override
  State<StudioListScreen> createState() => _StudioListScreenState();
}

class _StudioListScreenState extends State<StudioListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title:  Text("Studio List",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),
        centerTitle: true,
        actions: [
          Padding(
          padding: const EdgeInsets.only(right: 20),
          child:   InkWell(
            onTap: (){
              _dialogBuilder(context);
            },
            child: Container(
              height: 34,
              width: 34,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF1B233A),
              ),
              child: SvgPicture.asset('assets/images/setting-4.svg',fit: BoxFit.none,),
            ),
          ),
        )],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
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
              //height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size2),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size5),
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
                          'assets/images/yoga_classes.png',
                          width: AddSize.size90,
                          height: AddSize.size90,
                          fit: BoxFit.cover,
                        ),
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
                        padding: const EdgeInsets.only(top: 1),
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
                                      text: 'Dance Studio',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size16,
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
                                      fontSize: 13,
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
                                  text: "Folk Dance",
                                  color: Color(0xFF004B93),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                                // SizedBox(
                                //   width: AddSize.size20,
                                // ),

                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Color(0xFF004B93),size: 20,),
                                SizedBox(width: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
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
Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              _showDatePicker(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Date'),
                InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                  onTap: (){
                    // _showDatePicker(context);

                  },
                )
              ],
            ),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              _distance(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Distance'),
                InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                  onTap: (){
                    _distance(context);
                  },
                )
              ],
            ),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();
              _category(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Category'),
                InkWell(
                  child: const Icon(Icons.arrow_forward_ios,size: 20,),
                  onTap: (){
                    _category(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}
Future<void> _showDatePicker (BuildContext context) {
  return showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025),     builder: (context,child){
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.orange,
      ),
      child: child!,
    );
  },);

}
Future<void> _distance (BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        RangeValues values = RangeValues(1, 100);
        return SimpleDialog(
            title: const Text('Distance',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,),),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            children: <Widget>[
              SimpleDialogOption(
                child:  Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 8,
                        width: 231,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF8E30),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFF1E5),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('1km',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF657074)),),
                    Text('10km',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF657074)),),

                  ],
                ),
              )
            ]);
      }
  );
}
Future<void> _category (BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Get.back();
              },
              child: const Text('Classes'),
            ),
            const Divider(thickness: 1,),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Events'),
            ),
          ],
        );
      }
  );
}