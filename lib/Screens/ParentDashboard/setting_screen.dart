import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/dimentions.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool forPushNoti = true;
  bool fortxtNoti = false;
  bool forlocationNoti = false;
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
            child : Icon(Icons.arrow_back)),
        title: Text("Setting",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Container(
            //height: MediaQuery.of(context).size.height * 2,
            padding: EdgeInsets.only(top: AddSize.size10),
            // margin: EdgeInsets.all(AddSize.size10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xFFFFFFFF),
                     boxShadow: (blurBoxShadow),
                   ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Push Notification',style: TextStyle(
                          color: Color(0xFF1B233A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
                        Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF18B884),
                            inactiveThumbColor: Color(0xFFFFFFFF),
                            inactiveTrackColor: Color(0xFF18B884).withOpacity(.26),
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forPushNoti,
                            // changes the state of the switch
                            onChanged: (value) => setState(() => forPushNoti = value),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xFFFFFFFF),
                     boxShadow: (blurBoxShadow),
                   ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Text Notification',style: TextStyle(
                          color: Color(0xFF1B233A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
                        Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF18B884),
                            inactiveThumbColor: Color(0xFFFFFFFF),
                            inactiveTrackColor: Color(0xFF18B884).withOpacity(.26),
                            splashRadius: 50.0,
                            // boolean variable value
                            value: fortxtNoti,
                            // changes the state of the switch
                            onChanged: (value) => setState(() => fortxtNoti = value),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xFFFFFFFF),
                     boxShadow: (blurBoxShadow),
                   ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Allow location services',style: TextStyle(
                          color: Color(0xFF1B233A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
                        Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            // thumb color (round icon)
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFF18B884),
                            inactiveThumbColor: Color(0xFFFFFFFF),
                            inactiveTrackColor: Color(0xFF18B884).withOpacity(.26),
                            splashRadius: 50.0,
                            // boolean variable value
                            value: forlocationNoti,
                            // changes the state of the switch
                            onChanged: (value) => setState(() => forlocationNoti = value),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
