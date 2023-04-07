import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../../widgets/app_theme.dart';
class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
        title: const Text("Support",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: const [
                  AddText(text: 'Hi, How can we Help?',fontWeight: FontWeight.w600,fontSize: 20,)
                ],
              ),
             const SizedBox(height: 16,),
              SizedBox(
                height: 52,
                child: TextField(
                  //controller: helpScreenController.searchController1,
                  textInputAction: TextInputAction.search,
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFFC9002B)),
                        borderRadius:
                        BorderRadius.all(Radius.circular(11))),
                    border: const OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xfff53b176)),
                        borderRadius:
                        BorderRadius.all(Radius.circular(11))),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Search',
                    suffixIcon: GestureDetector(
                        onTap: (){
                          //helpScreenController.getDatasEARCH();
                        },
                        child: const Icon(Icons.search,color: Color(0xFFC9002B),)),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  SizedBox(height: 31,),
                  AddText(text: 'Hot Questions',fontWeight: FontWeight.w500,fontSize: 18,),
                  SizedBox(height: 19,),
                  AddText(text: '(My Account) Why did I not receive my verification code/ One-Time Password (OTP) via SMS?',fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xFF545454),),
                  SizedBox(height: 16),
                  Divider(thickness: 1.0,),
                  SizedBox(height: 16),
                  AddText(text: '(Order Cancellation) How will I get my refund for cancelled orders?',color: Color(0xFF545454),fontWeight: FontWeight.w400,fontSize: 16,),
                  SizedBox(height: 16),
                  Divider(thickness: 1.0,),
                  SizedBox(height: 16),
                  AddText(text: '(Order Tracking) How do I check the status of my order?',color: Color(0xFF545454),fontWeight: FontWeight.w400,fontSize: 16,),
                  SizedBox(height: 16),
                  Divider(thickness: 1.0,),
                  SizedBox(height: 16),
                  AddText(text: '(My Account) Why did I not receive my verification code/ One-Time Password (OTP) via SMS?',color: Color(0xFF545454),fontWeight: FontWeight.w400,fontSize: 16,),
                  Divider(thickness: 1.0,),
                  SizedBox(height: 16),
                  AddText(text: '(Order Tracking) How do I check the status of my order?',color: Color(0xFF545454),fontWeight: FontWeight.w400,fontSize: 16,),
                  SizedBox(height: 16),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
