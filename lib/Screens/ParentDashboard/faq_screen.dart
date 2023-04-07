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
            child : const Icon(Icons.arrow_back)),
        title: const Text("FAQ",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: ThemeData().copyWith( dividerColor: Colors.transparent,
                  accentColor: Colors.black,),
                child: const ExpansionTile(
                  backgroundColor: Color(0xFFFCFBFA),
                  iconColor:Color(0xFF83888E),
                  collapsedIconColor: Color(0xFF83888E),
                  childrenPadding: EdgeInsets.all(2),
                  title: Text(
                      'Can I cancel my order?',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  children: <Widget>[
                    ListTile(
                      iconColor: Color(0xFF83888E),
                      isThreeLine: true,

                      subtitle:  AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                        ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,color: Color(0xFF545454),
                      ),
                      dense: true,

                    ),

                  ],
                ),
              ),
             const Divider(thickness: 1.0,),
             const SizedBox(height: 10,),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: const ExpansionTile(
                  backgroundColor: Color(0xFFFCFBFA),
                  iconColor:Color(0xFF83888E),
                  collapsedIconColor: Color(0xFF83888E),
                  childrenPadding: EdgeInsets.all(2),
                  title: Text(
                    'How to buy many products at a time?',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  children: <Widget>[
                    ListTile(
                      iconColor: Color(0xFF83888E),
                      isThreeLine: true,

                      subtitle:  AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                        ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,color: Color(0xFF545454),),
                      dense: true,

                    ),

                  ],
                ),
              ),
              const Divider(thickness: 1.0,),
              const SizedBox(height: 10,),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: const ExpansionTile(
                  backgroundColor: Color(0xFFFCFBFA),
                  iconColor:Color(0xFF83888E),
                  collapsedIconColor: Color(0xFF83888E),
                  childrenPadding: EdgeInsets.all(2),
                  title: Text(
                    'Refund policy for customer?',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  children: <Widget>[
                    ListTile(
                      iconColor: Color(0xFF83888E),
                      isThreeLine: true,

                      subtitle:  AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                        ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,color: Color(0xFF545454),),
                      dense: true,

                    ),

                  ],
                ),
              ),
              const Divider(thickness: 1.0,),
              const SizedBox(height: 10,),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: const ExpansionTile(
                  backgroundColor: Color(0xFFFCFBFA),
                  iconColor:Color(0xFF83888E),
                  collapsedIconColor: Color(0xFF83888E),
                  childrenPadding: EdgeInsets.all(2),
                  title: Text(
                    'Exchange policy for customer?',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  children: <Widget>[
                    ListTile(
                      iconColor: Color(0xFF83888E),
                      isThreeLine: true,

                      subtitle:  AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                        ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,color: Color(0xFF545454),),
                      dense: true,

                    ),

                  ],
                ),
              ),
              const Divider(thickness: 1.0,),
              const SizedBox(height: 10,),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: const ExpansionTile(
                  backgroundColor: Color(0xFFFCFBFA),
                  iconColor:Color(0xFF83888E),
                  collapsedIconColor: Color(0xFF83888E),
                  childrenPadding: EdgeInsets.all(2),
                  title: Text(
                    'Give a way products available',
                    style: TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  children: <Widget>[
                    ListTile(
                      iconColor: Color(0xFF83888E),
                      isThreeLine: true,

                      subtitle:  AddText(text: 'Yes you can. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.'
                        ,fontSize: 14,fontWeight: FontWeight.w300,height: 1.5,color: Color(0xFF545454),),
                      dense: true,

                    ),

                  ],
                ),
              ),
              const Divider(thickness: 1.0,),
              const SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }

}
