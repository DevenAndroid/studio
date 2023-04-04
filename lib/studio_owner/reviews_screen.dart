import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class ReviewOwnerScreen extends StatefulWidget {
  const ReviewOwnerScreen({Key? key}) : super(key: key);

  @override
  State<ReviewOwnerScreen> createState() => _ReviewOwnerScreen();
}

class _ReviewOwnerScreen extends State<ReviewOwnerScreen> {
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
        title: Text("Reviews",style: TextStyle(color: Colors.white),),
        centerTitle: true,
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
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          // height: 102,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: (blurBoxShadow)
                          ),
                          margin: EdgeInsets.all(4),
                          child: Padding(
                            padding: EdgeInsets.all(AddSize.padding10),
                            child: InkWell(
                              onTap: () {
                                // Get.toNamed(MyRouter.myMessage);
                              },
                              child: Column(
                                children: [
                                  // SizedBox(height: 14,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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

                                            Row(
                                              children: [
                                                const Text('Jacky Smith ',style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Color(0xFF1B233A)
                                                ),),
                                                Spacer(),
                                                const Text('Oct 23, 22',style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13,
                                                    color: Color(0xFF969AA3)
                                                ),),
                                                SizedBox(
                                                  height: AddSize.size10,
                                                ),
                                              ],
                                            ),
                                           const SizedBox(height: 1,),
                                            const Text('Yoga Class ',style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xFF616A83),
                                            ),),
                                            SizedBox(height: 5),
                                            Row(
                                              children: List.generate(5, (indexS) {
                                                return int.parse((
                                                    "5")
                                                    .toString()) <
                                                    indexS + 1
                                                    ? const Icon(
                                                  Icons.star_border_outlined,
                                                  size: 18,
                                                )
                                                    : const Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Color(0xFFF2AC0D),
                                                );
                                              }),
                                            ),
                                            SizedBox(height: 6,),
                                            const Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking... ',style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13,
                                              color: Color(0xFF969AA3),
                                            ),),
                                          const  Text('read more',style: TextStyle(
                                              color: Color(0xFF567DF4),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                            ),),
                                            addHeight(AddSize.size13),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
