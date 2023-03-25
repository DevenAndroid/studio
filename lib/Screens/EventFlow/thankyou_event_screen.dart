import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Router/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class ThankYouEventScreen extends StatefulWidget {
  const ThankYouEventScreen({Key? key}) : super(key: key);

  @override
  State<ThankYouEventScreen> createState() => _ThankYouEventScreenState();
}

class _ThankYouEventScreenState extends State<ThankYouEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: AddSize.size170),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey
                        )]
                    ),
                    child: CircleAvatar(
                      backgroundColor: AppTheme.primaryColor,
                      minRadius: 65,
                      maxRadius: 65,
                      child: Image.asset('assets/images/Vectorcheck.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AddSize.size40),
              Center(child: AddText(text: 'Your Platinum member',fontSize: 25,fontWeight: FontWeight.w600,)),
              Center(child: AddText(text: 'successful',fontSize: 25,fontWeight: FontWeight.w600,height: 1.5)),
              SizedBox(height: AddSize.size20),
              Center(child: AddText(text: 'Thank You for The purchase plan',fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF828B88),)),
              SizedBox(height: AddSize.size10),


              SizedBox(height: AddSize.size200,),
              SizedBox(height: AddSize.size50,),

              ElevatedButton(onPressed: ()
              {
                //Get.toNamed(MyRouter.bottomNavBar);
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
                  child: Center(child: AddText(text: 'CHECK DETAILS',color:Colors.white,fontWeight: FontWeight.w600))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
