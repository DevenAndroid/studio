import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          padding: const EdgeInsets.only(left: 80),
          child: Text("My Profile",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AddSize.size18 * 10,
                        width: AddSize.size18 * 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppTheme.primaryColor)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: AddSize.size15 * 10,
                          width: AddSize.size15 * 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppTheme.primaryColor)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    right: 10,
                    bottom: 10,
                    child: Stack(
                      children: [
                        Container(
                          height: AddSize.size110,
                          width: AddSize.size110,
                          child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(100),
                              child:
                              // CachedNetworkImage(
                              //   imageUrl: controller.model.value.data!.profileImage.toString(),
                              //   errorWidget: (_, __, ___) =>
                                    Image.asset(
                                        'assets/images/Ellipse1566.png',
                                         width: AddSize.screenWidth * .3,
                                         height: AddSize.screenHeight * .2,
                                         fit: BoxFit.cover,
                                    ),
                             //   placeholder: (_, __) => SizedBox(),
                             //    width: AddSize.screenWidth * .3,
                             //    height: AddSize.screenHeight * .2,
                             //    fit: BoxFit.cover,
                             //  )
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 80,
                          right: 10,
                          bottom: 70,
                          child: InkWell(
                            onTap: () {
                            //  Get.toNamed(MyRouter.editProfile);
                            },
                            child: Container(
                              width: AddSize.size20,
                              height: AddSize.size10,
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.white),
                                  borderRadius:
                                  BorderRadius.circular(100),
                                  color: AppTheme.filtter),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: AddSize.size20,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.buttonColor,
                  minRadius: 30,
                  maxRadius: 30,
                  child: Image.asset('assets/images/Vector2.png'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(text: 'Name',fontWeight: FontWeight.w400,),
                    SizedBox(height: 10,),
                    AddText(text: 'Williams Jones'),

                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.buttonColor,
                  minRadius: 30,
                  maxRadius: 30,
                  child: Image.asset('assets/images/Group176.png'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(text: 'Email',fontWeight: FontWeight.w400),
                    SizedBox(height: 10,),
                    AddText(text: 'Williamjones@gmail.com'),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.buttonColor,
                  minRadius: 30,
                  maxRadius: 30,
                  child: Image.asset('assets/images/Group175.png'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(text: 'Mobile Number',fontWeight: FontWeight.w400),
                    SizedBox(height: 10,),
                    AddText(text: '+91 987-654-3210'),

                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.buttonColor,
                  minRadius: 30,
                  maxRadius: 30,
                  child: Image.asset('assets/images/location.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(text: 'Address',fontWeight: FontWeight.w400),
                      SizedBox(height: 10,),
                      AddText(text: 'Riverside Building, County Hall, LondonSE1 7PB, United Kingdom'),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 70,),
            ElevatedButton(onPressed: ()
            {
              Get.toNamed(MyRouter.editProfileScreen);
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
                child: Center(child:  AddText(text: 'EDIT PROFILE',color:Colors.white,fontWeight: FontWeight.w600,fontSize: 19))
            ),

          ],
        ),
      ),
    );
  }
}
