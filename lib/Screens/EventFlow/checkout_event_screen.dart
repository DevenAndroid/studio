import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class CheckoutEventScreen extends StatefulWidget {
  const CheckoutEventScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutEventScreen> createState() => _CheckoutEventScreenState();
}

class _CheckoutEventScreenState extends State<CheckoutEventScreen> {
  List method = ["Google pay","PayPal"];
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
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text("Checkout",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              SizedBox(height: 20,),
              SizedBox(height: 40,),
              AddText(text: 'Select The Payment Method',fontSize: 18,),
              SizedBox(height: AddSize.size20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    border: Border.all(color: Color(0xFFD4D9FF)),
                    borderRadius: BorderRadius.circular(15)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/Group1000003786.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: '**** **** **** 0007',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size25,
                    ),
                    addRadioButton(
                      1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    border: Border.all(color: Color(0xFFD4D9FF)),
                    borderRadius: BorderRadius.circular(15)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/image32.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: '**** **** **** 0012',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    // SizedBox(
                    //   width: AddSize.size25,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: addRadioButton(
                        0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size40,),
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
          activeColor: AppTheme.primaryColor,
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
