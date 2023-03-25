import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
            AddText(text: 'Your Booking is Confirmed!',fontSize: 25,fontWeight: FontWeight.w600,),
            SizedBox(height: AddSize.size20),
            Center(child: AddText(text: 'Thank You for The Booking',fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF828B88),)),
            SizedBox(height: AddSize.size10),
            Center(child: AddText(text: 'Booking is #2589632',fontSize: 16,fontWeight: FontWeight.w400,color: AppTheme.primaryColor,)),


            SizedBox(height: AddSize.size200,),
            SizedBox(height: AddSize.size80),

            ElevatedButton(onPressed: ()
            {
              Get.toNamed(MyRouter.bottomNavBar);
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
                child: Center(child: AddText(text: 'GO TO HOME',color:Colors.white,fontWeight: FontWeight.w600))
            ),
          ],
        ),
      ),
    );
  }
}
