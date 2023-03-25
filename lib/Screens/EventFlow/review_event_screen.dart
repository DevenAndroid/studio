import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class ReviewEventScreen extends StatefulWidget {
  const ReviewEventScreen({Key? key}) : super(key: key);

  @override
  State<ReviewEventScreen> createState() => _ReviewEventScreenState();
}

class _ReviewEventScreenState extends State<ReviewEventScreen> {
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
          padding: const EdgeInsets.only(left: 90),
          child: Text("Review",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context,int index) {
                  return InkWell(onTap: (){
                    
                  },
                    child: Container(
                      decoration: BoxDecoration(
                         // border: Border.all(),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.all(5),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 130),
                              child: Image.asset('assets/images/Ellipse1563.png'),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AddText(text: 'Jacky Smith',fontWeight: FontWeight.w500),
                                          SizedBox(width: 5,),
                                          Icon(Icons.verified,
                                            color: Color(0xFF12C202),),
                                        ],
                                      ),
                                      AddText(text: 'Oct 23,22',fontWeight: FontWeight.w300)
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  AddText(text: 'Yoga Class',fontWeight: FontWeight.w400,),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: AddSize.size20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: AddSize.size20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: AddSize.size20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: AddSize.size20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFDFDFDF),
                                        size: AddSize.size20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  AddText(
                                    text: 'It is a long established fact that a reader will be distracted by the readable content'
                                        ' of a page when looking... read more',fontWeight: FontWeight.w300,
                                    height: 1.3,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  );
                })
            ],
          ),
        ),
      ),
    );
  }
}
