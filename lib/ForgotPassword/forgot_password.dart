import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
// import '../../../repository/forgotpassword_repository.dart';
// import '../../../resource/app_theme.dart';
// import '../../../resource/helper_class.dart';
// import '../../../routers/my_router.dart';
import '../../../widgets/add_text.dart';
import '../../../widgets/common_appbar.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_textfield.dart';
import '../../../widgets/dimentions.dart';
// import 'package:phone_form_field/phone_form_field.dart';

import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button1.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
      BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final TextEditingController emailController = TextEditingController();

  final maintext = "Please enter the phone number or email.";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF8E30),
        leading: InkWell(onTap: (){Get.back();},
            child: Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Forgot Password",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding16),
            child: Column(
              children: [
                Container(
                  height: AddSize.size300,
                  // width: AddSize.size40,
                  decoration: const BoxDecoration(
                    // boxShadow: blurBoxShadow,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Forgot password-amico 1.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  width: AddSize.screenWidth,
                  margin: EdgeInsets.all(AddSize.size5),
                  padding: EdgeInsets.all(AddSize.size15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AddSize.size40,
                    ),
                    AddText(
                      text: 'Enter the email address associated with your account.',
                      //textAlign: TextAlign.center,
                      color: AppTheme.userText,
                      //fontWeight: FontWeight.w600,
                      fontSize: AddSize.font18,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    // AddText(
                    //   text: maintext,
                    //   color: AppTheme.userText,
                    //   fontWeight: FontWeight.w400,
                    //   height: 1.20,
                    //   fontSize: AddSize.font16,
                    // ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Email ID',
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                      fontSize: AddSize.font14,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    // SizedBox(
                    //   height: AddSize.size100 * .50,
                    //   child: TextFormField(
                    //     keyboardType: TextInputType.text,
                    //     controller: emailController,
                    //     decoration: InputDecoration(
                    //       hintText: "Email ID",
                    //       fillColor: AppTheme.primaryColor.withOpacity(0.5),
                    //       contentPadding:
                    //           EdgeInsets.symmetric(horizontal: AddSize.size12),
                    //       border: commonBorder,
                    //       focusedBorder: commonBorder,
                    //       disabledBorder: commonBorder,
                    //       enabledBorder: commonBorder,
                    //     ),
                    //   ),
                    // ),
                    CommonTextFieldWidget(
                      keyboardType: TextInputType.text,
                      controller: emailController,
                      //maxLength: 10,
                      hint: 'Enter your email id',
                      textInputAction: TextInputAction.next,
                      bgColor: Colors.white,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: 'your email entered is incorrect'),
                        //   PatternValidator(r'(^(?:[+0]9)?[0-9]{10,12}$)',
                        //       errorText: 'only digit allow'),
                        //   MinLengthValidator(9,
                        //       errorText: 'Phone number is not less then 9 digit'),
                        //   MaxLengthValidator(10,
                        //       errorText:
                        //           'Phone number is not greater then 10 digit')
                      ]),
                    ),
                    //PhoneFormField(
                    //validator: PhoneValidator.validMobile(),

                    SizedBox(
                      height: AddSize.size80,
                    ),
                    // Center(
                    //   child: CommonButton('Send ', () {
                    //     if (formKey.currentState!.validate()) {
                    //       // forgotPassword(emailController.text, context)
                    //       //     .then((value) async {
                    //       //   if (value.status == true) {
                    //       //     showToast(value.message);
                    //           Get.toNamed(MyRouter.signupVerification);
                    //       //         arguments: [emailController.text]);
                    //       //   } else {
                    //       //     showToast(
                    //       //       value.message.toString().replaceAll(
                    //       //           'No user registered with this phone number.',
                    //       //           'This number is not registered'),
                    //       //     );
                    //       //   }
                    //       // });
                    //     }
                    //   }, deviceWidth, expended: true, AddSize.size50),
                    // ),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width / 1,
                      child: ElevatedButton(onPressed: (){
                        if (formKey.currentState!.validate()) {
                          // forgotPassword(emailController.text, context)
                          //     .then((value) async {
                          //   if (value.status == true) {
                          //     showToast(value.message);
                          Get.toNamed(MyRouter.signupVerification);
                          //         arguments: [emailController.text]);
                          //   } else {
                          //     showToast(
                          //       value.message.toString().replaceAll(
                          //           'No user registered with this phone number.',
                          //           'This number is not registered'),
                          //     );
                          //   }
                          // });
                        }
                      }, style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.buttonColor,
                      ),
                          child: Text('Send OTP',style: TextStyle(fontSize: 20,),)),
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
