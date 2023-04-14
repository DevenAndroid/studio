import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';

class StudioWithDrawlScreen extends StatefulWidget {
  const StudioWithDrawlScreen({Key? key}) : super(key: key);

  @override
  State<StudioWithDrawlScreen> createState() => _StudioWithDrawlScreenState();
}

class _StudioWithDrawlScreenState extends State<StudioWithDrawlScreen> {
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
            child : Icon(Icons.arrow_back)),
        title: Text("Withdrawl Money",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddText(text: 'My Balance',fontWeight: FontWeight.w400,fontSize: 16,),
                          SizedBox(height: 5,),
                          AddText(text: '\$2400',fontWeight: FontWeight.w600,fontSize: 25,),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppTheme.buttonColor
                        ),child: Icon(Icons.account_balance_wallet,color: Colors.white,size: 30,),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Center(child: AddText(text: '\$100',fontWeight: FontWeight.w600,fontSize: 25,)),
                      SizedBox(height: 35,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),child: Center(child: AddText(text: '+\$500',)),
                          ),SizedBox(width: 20,),
                          Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),child: Center(child: AddText(text: '+\$800',)),
                          ),SizedBox(width: 20,),
                          Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),child: Center(child: AddText(text: '+\$1000',)),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
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
                          child: Center(child: AddText(text: 'WITHDRAWL',color:Colors.white,fontWeight: FontWeight.w600))
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AddText(text: 'Amount',fontSize: 14,fontWeight: FontWeight.w600,),
                          AddText(text: 'Date',fontSize: 14,fontWeight: FontWeight.w600,),
                          AddText(text: 'Status',fontSize: 14,fontWeight: FontWeight.w600,)
                        ],
                      ),SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AddText(text: '\$7,969.00',fontSize: 12,),
                          AddText(text: 'Monday, 2 June, 2021',color: Colors.grey,fontSize: 11,),
                          AddText(text: 'Pending',color: AppTheme.primaryColor,fontSize: 12,)
                        ],
                      ),SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AddText(text: '\$7,969.00',fontSize: 12,),
                          AddText(text: 'Monday, 2 June, 2021',color: Colors.grey,fontSize: 11,),
                          AddText(text: 'Completed',color: Color(0xFF65CD90),fontSize: 12,)
                        ],
                      ),SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AddText(text: '\$7,969.00',fontSize: 12,),
                          AddText(text: 'Monday, 2 June, 2021',color: Colors.grey,fontSize: 11,),
                          AddText(text: 'Reject',color: Color(0xFFFF557E),fontSize: 12,)
                        ],
                      ),SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AddText(text: '\$7,969.00',fontSize: 12,),
                          AddText(text: 'Monday, 2 June, 2021',color: Colors.grey,fontSize: 11,),
                          AddText(text: 'Pending',color: AppTheme.primaryColor,fontSize: 12,)
                        ],
                      ),SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
