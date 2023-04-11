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
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : const Icon(Icons.arrow_back)),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 80),
        //   child: Text("Checkout",style: TextStyle(color: Colors.white),),
        // ),
        centerTitle: true,
        title: const Text("Checkout",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Container(
                      height: 69,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                       boxShadow: (blurBoxShadow),
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const[
                            Text('Studio Name:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                            Text('Rocks Dance Studio',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AddSize.size10,),
                    Container(
                      height: 154,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: (blurBoxShadow),
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 14),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Child Name:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('William Joe',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Jaz Dance:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$98.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Tax:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$2.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Pay Amount:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$100.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AddSize.size10,),
                    Container(
                      height: 154,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: (blurBoxShadow),
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 14),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Child Name:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('Jack Smith',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Popup Dance:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$98.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Tax:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$2.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Text('Pay Amount:',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                                Text('\$100.00',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w300 ,fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AddSize.size10,),
                    Container(
                      height: 69,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: (blurBoxShadow),
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const[
                            Text('Total Amount',style: TextStyle(color: Color(0xFF1B233A),fontWeight: FontWeight.w500 ,fontSize: 16 )),
                            Text('\$190.00',style: TextStyle(color: Color(0xFFFF8E30),fontWeight: FontWeight.w500 ,fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size16,),
              const Padding(
                padding:  EdgeInsets.only(left:5.0),
                child:  AddText(text: 'Select The Payment Method',fontSize: 18,),
              ),
              SizedBox(height: AddSize.size20,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: (blurBoxShadow),
                      // border: Border.all(color: const Color(0xFFD4D9FF)),
                      borderRadius: BorderRadius.circular(15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .10,
                  width: MediaQuery.of(context).size.width,
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
                        0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size10,),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: (blurBoxShadow),
                      // border: Border.all(color: const Color(0xFFD4D9FF)),
                      borderRadius: BorderRadius.circular(15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .10,
                  width:  MediaQuery.of(context).size.width,
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
                      AddText(
                        text: '**** **** **** 0012',
                        textAlign: TextAlign.start,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font16,
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
              ),
              SizedBox(height: AddSize.size18,),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.0,
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
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AddText(text: 'I have read and understand the studio\'s',fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF1B233A),),
                        SizedBox(height: AddSize.size5,),
                        InkWell(onTap: (){
                          Get.toNamed(MyRouter.cancellationPolicyScreen);
                        },
                            child: const AddText(text: 'cancellation policy.',fontSize: 12,color: Color(0xFF2951C2),decoration: TextDecoration.underline,)),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: AddSize.size40,),
              ElevatedButton(onPressed: ()
              {
                //Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'ADD NEW CARD',color:AppTheme.primaryColor,fontWeight: FontWeight.w500,fontSize: 16,))
              ),
              SizedBox(height: AddSize.size20,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'CONFIRM',color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18,))
              ),
              SizedBox(height: AddSize.size20,),
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
