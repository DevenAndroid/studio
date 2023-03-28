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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          //Get.toNamed(MyRouter.studioScreen);
          Get.back();
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Child Information",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Add New Child",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Padding(
                padding: const EdgeInsets.all(16),
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
                      value: genderType.value == ""
                          ? null
                          : genderType.value,
                      validator: (value) {
                        if (genderType.value == "") {
                          return "Please select gender type";
                        } else {
                          return null;
                        }
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "Studio",
                          child: Text('Studio'),
                        ),
                        DropdownMenuItem(
                          value: "Others",
                          child: Text('Others'),
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
                      value: genderType.value == ""
                          ? null
                          : genderType.value,
                      validator: (value) {
                        if (genderType.value == "") {
                          return "Please select gender type";
                        } else {
                          return null;
                        }
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "Studio",
                          child: Text('Studio'),
                        ),
                        DropdownMenuItem(
                          value: "Others",
                          child: Text('Others'),
                        ),
                        //DropdownMenuItem(value: "Others",child: Text('Others'),)
                      ],
                      onChanged: (String? v) {
                        genderType.value = v!;
                      },
                    ),
                    SizedBox(height: AddSize.size40,),

                  ],
                ),
              ),
              //SizedBox(height: 300,),
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
              SizedBox(height: 270,),
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
