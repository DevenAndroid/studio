import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
class StudioClassPageScreen extends StatefulWidget {
  const StudioClassPageScreen({Key? key}) : super(key: key);

  @override
  State<StudioClassPageScreen> createState() => _StudioClassPageScreenState();
}

class _StudioClassPageScreenState extends State<StudioClassPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Text("My Classes",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(onTap: (){
              _dialogBuilder(context);
            },
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: SvgPicture.asset('assets/images/setting-4.svg',fit: BoxFit.none,),
              ),
            ),
          )],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
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
            //Get.toNamed(MyRouter.eventListScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: blurBoxShadow,
                  borderRadius: BorderRadius.circular(
                      AddSize.size15)),
              // width: AddSize.screenWidth,
             // height: AddSize.screenHeight * .21,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(6),
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
                        'assets/images/events_home.png',
                        width: AddSize.size80,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
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
                                      text: 'Dance Classes',
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
                                      color: const Color(0xFF1B233A),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text('Folk Dance',style: TextStyle(
                                color: Color(0xFF004B93),
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),),
                            const SizedBox(height: 6,),
                            Row(
                              //crossAxisAlignment:CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                // SizedBox(
                                //   width: AddSize.size20,
                                // ),
                                Row(
                                  children:  [
                                    InkWell(onTap: (){},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: const Color(0xFFD4D9FF))
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Color(0xFFE4E7FF),
                                          minRadius: 13,
                                          maxRadius: 13,
                                          child: Icon(Icons.edit,color: Color(0xFF39439D),size: 17),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 18),
                                    InkWell(onTap: (){},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: const Color(0xFFFFC2CF))
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Color(0xFFFFCFD9),
                                          minRadius: 13,
                                          maxRadius: 13,
                                          child: Icon(Icons.delete_forever,color: Color(0xFFC9002B),size: 17),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 7),
                                  child: Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                ),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),

                            // Row(
                            //   children: [
                            //     const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                            //     const SizedBox(width: 5,),
                            //     const Padding(
                            //       padding: EdgeInsets.only(top: 5),
                            //       child: AddText(
                            //         text: '5 km',
                            //         textAlign: TextAlign.start,
                            //         color: Colors.grey,
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 13,
                            //       ),
                            //     ),
                            //     addWidth(AddSize.size14),
                            //     Image.asset('assets/images/seat_icon.png',height: 16,width: 16,color: Colors.grey,),
                            //     addWidth(AddSize.size5),
                            //     Text('105 available seats',style: TextStyle(
                            //       fontWeight: FontWeight.w400,
                            //       color:  AppTheme.userText.withOpacity(.4),
                            //       fontSize: 13,
                            //     ),),
                            //   ],
                            // ),
                            SizedBox(height: 4),
                            const AddText(text: " \$ 30.00",color: AppTheme.primaryColor,fontSize: 15,fontWeight: FontWeight.w500,)
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
}
