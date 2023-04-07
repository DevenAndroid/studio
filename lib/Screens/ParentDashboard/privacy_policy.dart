import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../../widgets/app_theme.dart';
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
        title: const Text("Privacy Policy",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              AddText(text: 'Limited License',fontSize: 18,fontWeight: FontWeight.w500,),
              SizedBox(height: 10,),
              AddText(text: 'These Terms of Use are applicable to your access to and there are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xFF545454),height: 1.5),
              SizedBox(height: 10,),
              AddText(text: 'These Terms of Use are applicable to your to and there are many variations.',fontSize: 14,fontWeight: FontWeight.w500,height: 1.5),
              SizedBox(height: 30,),
              AddText(text: 'Software',fontSize: 18,fontWeight: FontWeight.w500,),
              SizedBox(height: 10,),
              AddText(text: 'These Terms of Use are applicable to your access to and there are many variations of passages of Privacy Policy available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xFF545454),height: 1.5),
              SizedBox(height: 10,),
              AddText(text: 'These Terms of Use are applicable to your to and there are many variations.',fontSize: 14,fontWeight: FontWeight.w500,height: 1.5),
              SizedBox(height: 10,),
              AddText(text: 'These Terms of Use are applicable to your access to and there are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',fontSize: 14,fontWeight: FontWeight.w300,color: Color(0xFF545454),height: 1.5),
            ],
          ),
        ),
      ),
    );
  }
}
