import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class SubscripitionPlanScreen extends StatefulWidget {
  const SubscripitionPlanScreen({Key? key}) : super(key: key);

  @override
  State<SubscripitionPlanScreen> createState() => _SubscripitionPlanScreenState();
}

class _SubscripitionPlanScreenState extends State<SubscripitionPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : const Icon(Icons.arrow_back)),
        title: const Text("Subscription Plan",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 29,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           InkWell(
                             onTap: (){},
                             child: Text('Cancel',
                              style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xFFED3C3C),
                              ),
                          ),
                           ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFFF8E30)
                            ),
                            child: Icon(Icons.shopping_cart,color: Colors.white,),
                          ),
                         const SizedBox(width: 16),
                         const Text('\$49',
                            style: TextStyle(
                              fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
                            ),
                          ),
                          const SizedBox(width: 7),
                         const Padding(
                            padding:  EdgeInsets.only(top: 4.0),
                            child:  Text('/Per Month',
                              style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xFF636577),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.check,color: Color(0xFFFF8E30),),
                          SizedBox(width: 10,),
                          AddText(text: 'charged every 1st of the month',color: Color(0xFF636577))
                        ],
                      )
                    ],
                  )
                ),
              ),
              SizedBox(height: 30,),
              AddText(text: 'Previous Transition',fontWeight: FontWeight.w500,fontSize: 18,),
              SizedBox(height: 30,),

              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 16),
                            const Text('\$49',
                              style: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            AddText(text: 'Purchased on 20 Dec, 2022 08:49 PM',color: Color(0xFF636577))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            AddText(text: 'Expire on 20 Dec, 2023 08:49 PM',color: Color(0xFF636577))
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Payment mode',color: Color(0xFF636577)),
                            AddText(text: 'Credit Card'),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Ref. number',color: Color(0xFF636577)),
                            AddText(text: 'TB000025Q85'),

                          ],
                        ),

                      ],
                    )
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 16),
                            const Text('\$49',
                              style: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            AddText(text: 'Purchased on 20 Dec, 2022 08:49 PM',color: Color(0xFF636577))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            AddText(text: 'Expire on 20 Dec, 2023 08:49 PM',color: Color(0xFF636577))
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Payment mode',color: Color(0xFF636577)),
                            AddText(text: 'Credit Card'),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(text: 'Ref. number',color: Color(0xFF636577)),
                            AddText(text: 'TB000025Q85'),

                          ],
                        ),

                      ],
                    )
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
