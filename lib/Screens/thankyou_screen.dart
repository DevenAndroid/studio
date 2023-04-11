import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size125),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset('assets/images/Group 1000004151.svg'),
                  ),
                ],
              ),
              SizedBox(height: AddSize.size40),
              const Center(child: AddText(text: 'Your Booking is Confirmed!',fontSize: 25,fontWeight: FontWeight.w600,)),
              SizedBox(height: AddSize.size20),
              const Center(child: AddText(text: 'Thank You for The Booking',fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF828B88),)),
              SizedBox(height: AddSize.size10),
              const Center(child: AddText(text: 'Booking is #2589632',fontSize: 16,fontWeight: FontWeight.w400,color: AppTheme.primaryColor,)),
              SizedBox(height: AddSize.size200,),

              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.bottomNavBar);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(340, 56),
                  ),
                  child: const Center(child: AddText(text: 'GO TO HOME',color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18,))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
