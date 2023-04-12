import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/custom_textfiled.dart';

class MyEmployeeScreen extends StatefulWidget {
  const MyEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<MyEmployeeScreen> createState() => _MyEmployeeScreenState();
}

class _MyEmployeeScreenState extends State<MyEmployeeScreen> {

  bool forPushNoti = true;
  bool forPushNoti1 = true;
  bool forPushNoti2 = true;
  bool forPushNoti3 = true;
  bool forPushNoti4 = true;
  bool forPushNoti5 = true;
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
        title: const Text("My Employee",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: CustomTextField(
                              hintText: 'Enter Email'.obs,
                              obSecure: false.obs,
                              //controller: cardName,
                              keyboardType: TextInputType.name,
                              // validator: MultiValidator([
                              //   RequiredValidator(
                              //       errorText:
                              //       'Please Enter card name '),
                              // ]),
                            ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed: ()
                          {
                            Get.toNamed(MyRouter.subscriptionPlanScreen2);
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.buttonColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide.none,
                                ),
                                minimumSize: const Size(66, 50),
                              ),
                              child: const Center(child: AddText(text: 'SEND',color:Colors.white,fontSize: 15,fontWeight: FontWeight.w600,))
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                              value: forPushNoti1,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => forPushNoti1 = value),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                              value: forPushNoti2,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => forPushNoti2 = value),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                              value: forPushNoti3,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => forPushNoti3 = value),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                              value: forPushNoti4,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => forPushNoti4 = value),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            //radius: 10,
                            child: Image.asset('assets/images/Ellipse1738.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AddText(text: 'Elaxa John'),
                              SizedBox(height: 5,),
                              AddText(text: 'elaxa.john@gmail.com'),
                            ],
                          ),
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
                              value: forPushNoti5,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => forPushNoti5 = value),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add, color: Colors.white, size: 29,),
                    backgroundColor: AppTheme.buttonColor,
                    tooltip: 'Capture Picture',
                    elevation: 5,
                    splashColor: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
