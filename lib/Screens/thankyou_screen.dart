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
            SizedBox(height: AddSize.size100),
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
            SizedBox(height: AddSize.size20),
            Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddText(text: 'Child Name',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: 'Popup Dance',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: 'Tax',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: 'Pay amount',fontWeight: FontWeight.w600),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddText(text: 'Jack Smith',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: '\$98.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: '\$2.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                        SizedBox(height: AddSize.size15,),
                        AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                      ],
                    ),
                    //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                    //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddText(text: 'Child name',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: 'Popup Dance',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: 'Tax',fontWeight: FontWeight.w600),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: 'Pay amount',fontWeight: FontWeight.w600),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddText(text: 'William Joe',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: '\$98.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: '\$2.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                        SizedBox(height: AddSize.size10,),
                        AddText(text: '\$98.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                      ],
                    ),
                    //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                    //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                  ],
                ),
              ],
            ),
          ),
            SizedBox(height: AddSize.size60,),
            ElevatedButton(onPressed: ()
            {
              Get.toNamed(MyRouter.thankYouScreen);
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
                child: Center(child: AddText(text: 'SEE DETAILS',color:Colors.white,fontWeight: FontWeight.w600))
            ),
          ],
        ),
      ),
    );
  }
}
