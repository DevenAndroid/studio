import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../../Router/my_router.dart';
import '../../widgets/app_theme.dart';
class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  List method = ['\$150'];
  String? selectedMethod;

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
        title: Text("Plans",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.buttonColor
                                ),child: Icon(Icons.shopping_cart,color: Colors.white,),
                              ),
                              SizedBox(width: 10,),
                              AddText(text: '\$150',color: AppTheme.buttonColor,fontWeight: FontWeight.w700,fontSize: 24,)
                            ],
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          AddText(text: 'One Time Event',fontSize: 21,fontWeight: FontWeight.w400,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 500,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.checkoutEventScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    minimumSize: const Size(340, 56),
                  ),
                  child: Center(child: AddText(text: 'UPGRADE',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),
            ],
          ),
        ),
      ),
    );
  }
  Row addRadioButton(int btnValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: AppTheme.buttonColor,
          value: method[btnValue],
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              print(value);
              selectedMethod = value;
            });
          },
        ),
      ],
    );
  }
}
