import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/studio_owner/subscription_plan.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class SubScripitionScreenOwner extends StatefulWidget {
  const SubScripitionScreenOwner({Key? key}) : super(key: key);

  @override
  State<SubScripitionScreenOwner> createState() => _SubScripitionScreenOwnerState();
}

class _SubScripitionScreenOwnerState extends State<SubScripitionScreenOwner> {
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
        title: const Text("Subscription Plans",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 29,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
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
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                const Icon(Icons.check,color: Color(0xFFC9002B),size: 20,),
                                const SizedBox(width: 11,),
                                const Text('\$x for #1 spot'),
                              ],
                            );
                          }),
                      const SizedBox(height: 15,),
                      ElevatedButton(onPressed: ()
                      {
                        Get.toNamed(MyRouter.subscriptionPlanScreen2);
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: AppTheme.buttonColor,
                              ),
                            ),
                            minimumSize: const Size(340, 50),
                          ),
                          child: const Center(child: AddText(text: 'Active',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: blurBoxShadow),
                child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return  Container(
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
                                      fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
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
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        const Icon(Icons.check,color: Color(0xFFC9002B),size: 20,),
                                        const SizedBox(width: 11,),
                                        const Text('\$x for #1 spot'),
                                      ],
                                    );
                                  }),
                              const SizedBox(height: 15,),
                              ElevatedButton(onPressed: ()
                              {
                                Get.toNamed(MyRouter.subscriptionPlanScreen2);
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFFA629),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide.none,
                                    ),
                                    minimumSize: const Size(340, 50),
                                  ),
                                  child: const Center(child: AddText(text: 'Upgrade',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(height: 65,),


          ],
        ),
      ),
    );
  }
}
