import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/dimentions.dart';

import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List method = ["Google pay","PayPal", "Credit Card"];
  String? selectedMethod;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFA629),
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
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
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
                            AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '2',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '\$2.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '\$202.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                            ],
                        ),
                        //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                        //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                      ],
                    ),
                    SizedBox(height: AddSize.size30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: 'Jaz Dance',fontWeight: FontWeight.w600),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: 'Tax',fontWeight: FontWeight.w600),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: 'Pay amount',fontWeight: FontWeight.w600),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '2',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '\$2.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                            SizedBox(height: AddSize.size10,),
                            AddText(text: '\$202.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                          ],
                        ),
                        //AddText(text: 'Folk Dance',fontWeight: FontWeight.w600),
                        //AddText(text: '\$100.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //AddText(text: 'Total Child',fontWeight: FontWeight.w600),
                       // AddText(text: '2',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                      ],
                    ),
                    SizedBox(height: AddSize.size15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //AddText(text: 'Tax',fontWeight: FontWeight.w600),
                       // AddText(text: '\$2.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400),
                      ],
                    ),
                    SizedBox(height: AddSize.size15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //AddText(text: 'Pay amount',fontWeight: FontWeight.w600),
                        //AddText(text: '\$202.00',color: Color(0xFF1B233A),fontWeight: FontWeight.w400)
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(height: AddSize.size20,),
              AddText(text: 'Payment Method',fontSize: 18,),
              SizedBox(height: AddSize.size20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: blurBoxShadow,
                    border: Border.all(color: Color(0xFFD4D9FF)),
                    borderRadius: BorderRadius.circular(40)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/image31.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: 'Google pay',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size25,
                    ),
                    addRadioButton(
                      0,
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
                    borderRadius: BorderRadius.circular(40)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/paypal1.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: 'PayPal',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: addRadioButton(
                        1,
                      ),
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
                    borderRadius: BorderRadius.circular(40)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/money3.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: 'Credit Card',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size25,
                    ),
                    addRadioButton(
                      2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      activeColor: AppTheme.primaryColor,
                      value: this.value,
                      onChanged: ( value) {
                        if(this.value == false){
                          setState(() {
                            this.value = true;
                          });
                        }
                        else if(this.value == true)  {
                          setState(() {
                            this.value = false;
                          });
                        }

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddText(text: 'I have read and understand the studio\'s',fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF1B233A),),
                        SizedBox(height: AddSize.size5,),
                        AddText(text: 'cancellation policy.',fontSize: 14,color: Color(0xFF2951C2),decoration: TextDecoration.underline,),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: AddSize.size40,),
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
                  child: Center(child: AddText(text: 'CONFIRM',color:Colors.white,))
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
