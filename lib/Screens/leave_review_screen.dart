import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
        title: Text("Leave Review",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              AddText(text: 'Give Feedback',fontWeight: FontWeight.w600,fontSize: 20,),
              SizedBox(height: 20,),
              AddText(text: 'How would you rate your experience?',fontWeight: FontWeight.w400,fontSize: 16,),
              SizedBox(height: 30,),
              AddText(text: 'How did we do?',fontWeight: FontWeight.w400,fontSize: 14,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: AddSize.size30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: AddSize.size30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: AddSize.size30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: AddSize.size30,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFDFDFDF),
                    size: AddSize.size30,
                  ),
                ],
              ),
              SizedBox(height: 50,),
              AddText(text: 'Comment'),
              SizedBox(height: 10,),
              Container(
                height: 170,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFC1C1EA)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(text: 'ex. you guys are awsome',fontWeight: FontWeight.w300,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 160,),
              ElevatedButton(onPressed: ()
              {
               // Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: Size(340, 58),
                  ),
                  child: Center(child: AddText(text: 'Submit Review',color:Colors.white,fontWeight: FontWeight.w600))
              ),

            ],
          ),
        ),
      ),
    );
  }
}
