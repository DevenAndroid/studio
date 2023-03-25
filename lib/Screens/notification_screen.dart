import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text("Notification",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Container(
            //height: MediaQuery.of(context).size.height * 2,
            padding: EdgeInsets.only(top: AddSize.size10),
            // margin: EdgeInsets.all(AddSize.size10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(boxShadow: blurBoxShadow),
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.all(AddSize.padding10),
                          child: InkWell(
                            onTap: () {
                             // Get.toNamed(MyRouter.myMessage);
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        'assets/images/Ellipse37.png',
                                        width: AddSize.size50,
                                        height: AddSize.size50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          AddText(
                                            text: "22-11-2022 at 09 :00 pm",
                                            color: AppTheme.userText.withOpacity(.5),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                          SizedBox(
                                            height: AddSize.size10,
                                          ),
                                          AddText(
                                            text: "Lorem ipsum dolor sit amet...",
                                            color: AppTheme.filtter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: AddSize.font15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Divider(
                                  thickness: 1,
                                  color: AppTheme.subText.withOpacity(.2),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                // SizedBox(
                //   height: AddSize.size10,
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
