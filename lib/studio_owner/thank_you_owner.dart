import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class ThankyouOwner extends StatefulWidget {
  const ThankyouOwner({Key? key}) : super(key: key);

  @override
  State<ThankyouOwner> createState() => _ThankyouOwnerState();
}

class _ThankyouOwnerState extends State<ThankyouOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const AddText(text: 'Your Platinum member successful ',fontSize: 25,fontWeight: FontWeight.w600,textAlign: TextAlign.center,),
                 SizedBox(height: AddSize.size20),
                 const AddText(text: 'Thank You for The purchase plan',fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF828B88),),
               ],
             ),
            const SizedBox(height: 29,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 186,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF8F8F8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                         Text('Platinum Member',
                            style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFF39439D),
                            ),
                          ),
                        Text('\$49',
                            style: TextStyle(
                              fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
                            ),
                          ),
                      ],
                    ),
                      ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Icon(Icons.check,color: Color(0xFFC9002B),size: 20,),
                                SizedBox(width: 11,),
                                Text('\$x for #1 spot'),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
           const SizedBox(height: 65,),
            Padding(
              padding: const EdgeInsets.only(left: 21,right: 21),
              child: ElevatedButton(onPressed: ()
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
                  child: const Center(child: AddText(text: 'Go to dashbord',color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18,))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
