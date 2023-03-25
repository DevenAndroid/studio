import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';
class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
        title: Padding(
          padding: const EdgeInsets.only(left: 110),
          child: Text("FAQ",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(text: 'Can I cancel my order?'),
                  InkWell(onTap: (){},
                      child: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),
              SizedBox(height: 10,),
              AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(text: 'How to buy many products at a time?'),
                  InkWell(onTap: (){},
                      child: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(text: 'Refund policy for customer?'),
                  InkWell(onTap: (){},
                      child: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(text: 'Exchange policy for customer?'),
                  InkWell(onTap: (){},
                      child: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(text: 'Give a way products available'),
                  InkWell(onTap: (){

                  },
                      child: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
