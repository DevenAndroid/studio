import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
import '../widgets/dimentions.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text("Edit Profile",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AddSize.size20,),
            AddText(
              text: "Name",
              fontSize: AddSize.size16,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size10,),
            CommonTextFieldWidget(
              //controller: emailController,
              hint: 'William jones',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //maxLength: 10,
              bgColor: AppTheme.textfield.withOpacity(0.5),
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter name '),
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
              text: "Email",
              fontSize: AddSize.size16,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size10,),
            CommonTextFieldWidget(
              //controller: emailController,
              hint: 'williamsjones@gmail.com',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //maxLength: 10,
              bgColor: AppTheme.textfield.withOpacity(0.5),
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter email '),
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
              text: "Mobile number",
              fontSize: AddSize.size16,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size10,),
            CommonTextFieldWidget(
              //controller: emailController,
              hint: '+91 987-654-3210',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //maxLength: 10,
              bgColor: AppTheme.textfield.withOpacity(0.5),
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter mobile number '),
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
              text: "Address",
              fontSize: AddSize.size16,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size10,),
            CommonTextFieldWidget(
              //controller: emailController,
              hint: 'Riverside Building, County hall,',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //maxLength: 10,
              bgColor: AppTheme.textfield.withOpacity(0.5),
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter address '),
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
            SizedBox(height: AddSize.size170),
            ElevatedButton(onPressed: ()
            {
             // Get.toNamed(MyRouter.editProfileScreen);
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
                child: Center(child: AddText(text: 'Save',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
            ),
          ],
        ),
      ),
    );
  }
}
