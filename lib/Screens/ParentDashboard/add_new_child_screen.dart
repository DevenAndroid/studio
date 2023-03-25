import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';
class AddNewChildScreen extends StatefulWidget {
  const AddNewChildScreen({Key? key}) : super(key: key);

  @override
  State<AddNewChildScreen> createState() => _AddNewChildScreenState();
}

class _AddNewChildScreenState extends State<AddNewChildScreen> {
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
          padding: const EdgeInsets.only(left: 60),
          child: Text("Add New Child",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Child Name",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'Jacky smith',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter child name '),
                  // PatternValidator(r'^[0-9]',
                  //     errorText: 'Only digits are allow'),
                  // MinLengthValidator(10,
                  //     errorText:
                  //         'Phone number must be at list 10 digit'),
                  // MaxLengthValidator(10,
                  //     errorText:
                  //         'Phone number is not greater then 10 digit'),
                ]),
              ),
              SizedBox(height: AddSize.size40,),
              AddText(
                text: "Age",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: '5 years',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter age '),
                  // PatternValidator(r'^[0-9]',
                  //     errorText: 'Only digits are allow'),
                  // MinLengthValidator(10,
                  //     errorText:
                  //         'Phone number must be at list 10 digit'),
                  // MaxLengthValidator(10,
                  //     errorText:
                  //         'Phone number is not greater then 10 digit'),
                ]),
              ),
              SizedBox(height: AddSize.size30,),
              AddText(
                text: "Upload child image",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Container(
                height: 170,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.boardercolor.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(onTap: (){},
                    child: Image.asset('assets/images/Group1000003877.png')),
              ),
              SizedBox(height: AddSize.size190,),
              ElevatedButton(onPressed: ()
              {
                // Get.toNamed(MyRouter.editProfileScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'ADD',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
