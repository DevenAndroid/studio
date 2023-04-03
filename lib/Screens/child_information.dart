import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/Router/my_router.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/dimentions.dart';

import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
class BookingInformationScreen extends StatefulWidget {
  const BookingInformationScreen({Key? key}) : super(key: key);

  @override
  State<BookingInformationScreen> createState() => _BookingInformationScreenState();
}

class _BookingInformationScreenState extends State<BookingInformationScreen> {
  RxString genderType = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          //Get.toNamed(MyRouter.studioScreen);
          Get.back();
        },
            child : Icon(Icons.arrow_back)),
        title: Text("Child Information",style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 11),
              AddText(
                text: "Add New Member",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: (blurBoxShadow),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(
                        text: "Child Name",
                        fontSize: AddSize.size16,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: AddSize.size10,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          hintText: "Jacky ",
                          focusColor: AppTheme.primaryColor,
                          hintStyle: TextStyle(
                              color: AppTheme.userText,
                              fontSize: AddSize.font14),
                          filled: true,
                          fillColor: AppTheme.appPrimaryPinkColor
                              .withOpacity(.02),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: AddSize.size12),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppTheme.primaryColor),
                            borderRadius:
                            BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.boardercolor
                                      .withOpacity(0.5)),
                              borderRadius:
                              const BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.boardercolor
                                      .withOpacity(0.5),
                                  width: 3.0),
                              borderRadius:
                              BorderRadius.circular(15.0)),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: "Jacky",
                            child: Text('Jacky'),
                          ),
                          DropdownMenuItem(
                            value: "Rocky",
                            child: Text('Rocky'),
                          ),
                          DropdownMenuItem(
                            value: "Alex",
                            child: Text('Alex'),
                          ),
                          DropdownMenuItem(
                            value: "Add New Child",
                            child: Text('Add New Child',style: TextStyle(color: Color(0xFF18B884),fontWeight: FontWeight.w600,fontSize: 14),),
                          ),
                          //DropdownMenuItem(value: "Others",child: Text('Others'),)
                        ],
                        onChanged: (String? v) {
                          genderType.value = v!;
                        },
                      ),
                      SizedBox(height: AddSize.size40,),
                      AddText(
                        text: "Caretaker Name",
                        fontSize: AddSize.size16,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: AddSize.size10,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          hintText: "Jolly",
                          focusColor: AppTheme.primaryColor,
                          hintStyle: TextStyle(
                              color: AppTheme.userText,
                              fontSize: AddSize.font14),
                          filled: true,
                          fillColor: AppTheme.appPrimaryPinkColor
                              .withOpacity(.02),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: AddSize.size12),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppTheme.primaryColor),
                            borderRadius:
                            BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.boardercolor
                                      .withOpacity(0.5)),
                              borderRadius:
                              const BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppTheme.boardercolor
                                      .withOpacity(0.5),
                                  width: 3.0),
                              borderRadius:
                              BorderRadius.circular(15.0)),
                        ),

                        items: const [
                          DropdownMenuItem(
                            value: "Ram lal",
                            child: Text('Ram lal'),
                          ),
                          DropdownMenuItem(
                            value: "shyam kumar",
                            child: Text('shyam kumar'),
                          ),
                          DropdownMenuItem(
                            value: "oren",
                            child: Text('oren'),
                          ),
                          //DropdownMenuItem(value: "Others",child: Text('Others'),)
                        ],
                        onChanged: (String? v) {
                          genderType.value = v!;
                        },
                      ),
                      SizedBox(height: AddSize.size30,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                  )
                ],
              ),
              SizedBox(height: 170,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.checkoutScreen);
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
                  child: Center(child: AddText(text: 'BOOK CLASS ',color:Colors.white,fontWeight: FontWeight.w600,))
              ),
            ],
          ),

        ),

      ),

    );
  }
}
