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
import 'package:flutter_svg/flutter_svg.dart';
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
        backgroundColor: Color(0xFFFFA629),
        leading: InkWell(onTap: (){
          print("Click Done");
          Get.back();
          },
            child: Icon(Icons.arrow_back)),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 50),
        //   child: Text("Forgot Password",style: TextStyle(color: Colors.white),),
        // ),
        centerTitle: true,
        title: const Text("Forgot Password",style: TextStyle(color: Colors.white),),
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
                  decoration:  BoxDecoration(
                    // boxShadow: blurBoxShadow,
                    color: Colors.white,
                    // image: DecorationImage(
                    //   // image: AssetImage("assets/images/Forgot password-amico 1.png"),
                    //   // fit: BoxFit.contain,
                    // ),
                  ),
                  child: SvgPicture.asset('assets/images/Forgot password-amico 1.svg'),
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
                      text: 'Your Email',
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: 14,
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
                      validator: (value) {
                        if (emailController.text.isEmpty) {
                          return "Please enter your email";
                        } else if (emailController.text
                            .contains('+') ||
                            emailController.text.contains(' ')) {
                          return "Email is invalid";
                        } else if (RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(emailController.text)) {
                          return null;
                        } else {
                          return 'Please enter a vaild email address';
                        }
                      },
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
