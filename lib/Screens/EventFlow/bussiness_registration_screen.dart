import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/Router/my_router.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class BusinessRegistrationScreen extends StatefulWidget {
  const BusinessRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<BusinessRegistrationScreen> createState() => _BusinessRegistrationScreenState();
}

class _BusinessRegistrationScreenState extends State<BusinessRegistrationScreen> {
  bool value = false;

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
          padding: const EdgeInsets.only(left: 30),
          child: Text("Business Registration",style: TextStyle(color: Colors.white),),
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
                text: "Business name",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'Popup dance class',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter  name '),
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
                text: "Email",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'info@gmail.com',
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
                text: "Phone",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: '987-654-3210',
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
                text: "Address",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'Riverside Building, County Hall',
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
                text: "Logo",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.boardercolor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                    onTap: (){},
                    child: Image.asset('assets/images/Group1000003877.png')),
              ),
              SizedBox(height: AddSize.size30,),
              AddText(
                text: "Studio image",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.boardercolor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(onTap: (){},
                    child: Image.asset('assets/images/Group39.png')),
              ),
              SizedBox(height: AddSize.size30,),
              AddText(
                text: "Upload Video",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.boardercolor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(onTap: (){},
                    child: Image.asset('assets/images/Group1000003877.png')),
              ),
              SizedBox(height: AddSize.size15,),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      activeColor: AppTheme.primaryColor,
                      value: this.value,
                      onChanged: ( value) {
                        if(this.value == false){
                          setState(() {
                            this.value = true;
                          });
                        }
                        else if(this.value == true)  {
                          setState(() {
                            this.value = false;
                          });
                        }

                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: AddText(text: 'I agree to the',fontSize: 14,fontWeight: FontWeight.w500,),
                      ),
                      SizedBox(width: 5,),
                      InkWell(onTap: (){
                        Get.toNamed(MyRouter.cancellationPolicyScreen);
                      },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: AddText(text: 'Cancellation Policy',fontSize: 14,fontWeight: FontWeight.w500,color: AppTheme.primaryColor,),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AddSize.size50,),
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
                  child: Center(child: AddText(text: 'REGISTER ACCOUNT',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),
              SizedBox(height: AddSize.size40,),

            ],
          ),
        ),
      ),
    );
  }
}
