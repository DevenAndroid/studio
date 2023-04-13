import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
//import '../../../repository/signup_verification_api.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import '../../repository/common_response_repository.dart';
// import '../../repository/signup_verification_repository.dart';
// import '../../resource/app_theme.dart';
// import '../../resource/helper_class.dart';
// import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';
import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button1.dart';

class SignupVerification extends StatefulWidget {
  const SignupVerification({Key? key}) : super(key: key);

  @override
  State<SignupVerification> createState() => _SignupVerification();
}

class _SignupVerification extends State<SignupVerification> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
      BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final otpController = TextEditingController();
  final TextEditingController useridController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  OtpFieldController controller = OtpFieldController();
  final TextEditingController emailController = TextEditingController();
  // RxString otpController = "".obs;
  RxBool showValidation = false.obs;

  final maintext = "An 4 digit code has been sent your mobile number";
  RxString otpValue = "".obs;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFFFA629),
          leading: InkWell(onTap: (){Get.back();},
              child: Icon(Icons.arrow_back)),
          // title: Padding(
          //   padding: const EdgeInsets.only(left: 70),
          //   child: Text("Verification",style: TextStyle(color: Colors.white),),
          // ),
          title: const Text("Verification",style: TextStyle(color: Colors.white)),
          centerTitle:true,
          toolbarHeight: 70,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(AddSize.padding16),
              child: Column(
                children: [
                  Container(
                    height: 296,
                    // width: AddSize.size40,
                    decoration: const BoxDecoration(
                      // boxShadow: blurBoxShadow,
                      color: Colors.white,
                      // image: DecorationImage(
                      //   image: AssetImage("assets/images/Forgot password-amico 1.png"),
                      //   fit: BoxFit.contain,
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
                        text: 'Enter the verification code we just sent you on your email address.',
                        //textAlign: TextAlign.center,
                        color: AppTheme.userText,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font18,
                      ),
                      SizedBox(
                        height: AddSize.size10,
                      ),
                      SizedBox(
                        height: AddSize.size25,
                      ),
                      AddText(
                        text: 'Your OTP',
                        color: AppTheme.userText,
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                        fontSize: AddSize.font14,
                      ),
                      SizedBox(
                        height: AddSize.size10,
                      ),

                      ///pincode
                      // Container(
                      //   padding: EdgeInsets.only(
                      //     left: AddSize.size10,
                      //     right: AddSize.size10,
                      //   ),
                      //   child: PinCodeTextField(
                      //     appContext: context,
                      //     textStyle: TextStyle(color: AppTheme.subText),
                      //     controller: otpController,
                      //     inputFormatters: [
                      //       FilteringTextInputFormatter.digitsOnly,
                      //     ],
                      //     pastedTextStyle: TextStyle(
                      //       color: Colors.green.shade600,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //     animationType: AnimationType.fade,
                      //     validator: (v) {
                      //       // if (v!.isEmpty) {
                      //       //   return "OTP code Required";
                      //       // } else if (v.length != 4) {
                      //       //   return "Enter complete OTP code";
                      //       // }
                      //       // return null;
                      //     },
                      //     length: 4,
                      //     pinTheme: PinTheme(
                      //       shape: PinCodeFieldShape.box,
                      //       borderRadius: BorderRadius.circular(AddSize.size30),
                      //       fieldWidth: AddSize.size50,
                      //       fieldHeight: AddSize.size50,
                      //       activeColor: AppTheme.primaryColor,
                      //       inactiveColor: AppTheme.textfield,
                      //       errorBorderColor: AppTheme.textfield,
                      //     ),
                      //     //   //runs when a code is typed in
                      //     keyboardType: TextInputType.number,
                      //     onChanged: (String VerificationCode) {
                      //       //otp = VerificationCode;
                      //     },
                      //   ),
                      // ),

                      // PinCodeFields(
                      //   controller: otpController,
                      //   length: 4,
                      //   fieldBorderStyle: FieldBorderStyle.Square,
                      //    padding: EdgeInsets.all(AddSize.size10),
                      //   switchInAnimationCurve: Curves.bounceIn,
                      //   margin: EdgeInsets.all(AddSize.size10),
                      //   responsive: false,
                      //   fieldHeight: AddSize.size50,
                      //   fieldWidth: AddSize.screenWidth / 8,
                      //   borderWidth: 1.0,
                      //   activeBorderColor: AppTheme.primaryColor,
                      //   // activeBackgroundColor: Colors.pink.shade100,
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   keyboardType: TextInputType.number,
                      //
                      //   autoHideKeyboard: false,
                      //   fieldBackgroundColor: Colors.white,
                      //   borderColor: AppTheme.primaryColor,
                      //   textStyle: TextStyle(
                      //     fontSize: AddSize.font22,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      //   onComplete: (output) {
                      //     // Your logic with pin code
                      //     print(output);
                      //   },
                      // ),
                      // SizedBox(
                      //   height: 56,
                      //   child: Theme(
                      //     data: ThemeData(
                      //       primaryColor: Colors.orangeAccent,
                      //       primaryColorDark: Colors.orange,
                      //     ),
                      //     child: OTPTextField(
                      //       length: 4,
                      //       width: MediaQuery.of(context).size.width,
                      //       fieldWidth: 75,
                      //       inputFormatter: [
                      //         FilteringTextInputFormatter.digitsOnly,
                      //       ],
                      //       otpFieldStyle: OtpFieldStyle(
                      //         borderColor: Colors.red,
                      //         backgroundColor: Color(0xFFFFF5F7),
                      //         enabledBorderColor: Colors.red,
                      //         focusBorderColor: Colors.red,
                      //       ),
                      //       style: const TextStyle(fontSize: 17),
                      //       controller: controller,
                      //       textFieldAlignment: MainAxisAlignment.spaceAround,
                      //       fieldStyle: FieldStyle.box,
                      //       onChanged: (pin) {
                      //         otpController.value = pin;
                      //         setState(() {});
                      //       },
                      //       onCompleted: (pin) {
                      //         otpController.value = pin;
                      //         setState(() {});
                      //       },
                      //     ),
                      //   ),
                      // ),

                      PinCodeTextField(
                        appContext: context,
                        errorTextMargin: EdgeInsets.only(top: 45),
                        // errorTextMargin: EdgeInsets.only(top: 15),
                        textStyle: const TextStyle(color: Colors.black),
                        controller: otpController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "OTP code Required";
                          } else if (v.length != 6) {
                            return "Enter complete OTP code";
                          }
                          return null;
                        },
                        length: 4,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12),
                          selectedColor:  Color(0xFFC9002B),
                          selectedFillColor: Colors.black,
                          fieldWidth: 80,
                          fieldHeight: 56,
                          activeColor: Color(0xFFC9002B),
                          inactiveColor: Color(0xFFC9002B),
                          inactiveFillColor:  Color(0xFFC9002B),
                          errorBorderColor:  Color(0xFFC9002B),
                        ),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        onChanged: (v) {
                          setState(() {
                            // currentText = v;
                          });
                        },
                      ),
                      // if (otpController.value.isEmpty && showValidation.value)
                      //   const Text(
                      //     "Otp is required",
                      //     style: TextStyle(color: Colors.red),
                      //   ),
                      // if (otpController.value.length != 4 &&
                      //     otpController.value.isNotEmpty &&
                      //     showValidation.value)
                      //   const Text(
                      //     "Enter valid otp",
                      //     style: TextStyle(color: Colors.red),
                      //   ),
                      SizedBox(
                        height: AddSize.size30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AddText(
                            text: "if you don't receive a code! ",
                            fontSize: AddSize.size14,
                            //decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(width: 2,),
                          InkWell(onTap: (){

                          },
                            child: AddText(
                              text: "Resend",
                              fontSize: AddSize.size14,
                              //decoration: TextDecoration.underline,
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: InkWell(
                      //     onTap: () {
                      //       // commonresponse(Get.arguments[1]).then((value) {
                      //       //   if (value.status == true) {
                      //       //     showToast(value.message);
                      //       //     Get.toNamed(MyRouter.signupVerification);
                      //       //   } else {
                      //       //     showToast(value.message);
                      //       //   }
                      //       // });
                      //     },
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         AddText(
                      //           text: "if you don't receive a code! ",
                      //           fontSize: AddSize.size14,
                      //           //decoration: TextDecoration.underline,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //         SizedBox(width: 3,),
                      //         AddText(
                      //           text: "Resend",
                      //           fontSize: AddSize.size14,
                      //           decoration: TextDecoration.underline,
                      //           color: AppTheme.primaryColor,
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 80,),
                      // CommonButton('Verify', () {
                      //   showValidation.value = true;
                      //   // if (otpController.value.length == 4) {
                      //   //   signupVerification(Get.arguments[0],
                      //   //       otpController.value, context)
                      //   //       .then((value) {
                      //   //     if (value.status == true) {
                      //   //       bool goNext = false;
                      //   //       Future.delayed(Duration(seconds: 4))
                      //   //           .then((value1) {
                      //   //         if (goNext == false) {
                      //   //           goNext = true;
                      //   //           Get.back();
                      //   //           Get.toNamed(MyRouter.loginScreen);
                      //   //         }
                      //   //       });
                      //   //       showDialog(
                      //   //           context: context,
                      //   //           barrierDismissible: false,
                      //   //           builder: (context) {
                      //   //             return AlertDialog(
                      //   //               title: Text(
                      //   //                   'Your account has been verified. Please Login'), // To display the title it is optional
                      //   //               //content: Text('you are successfully signup!! Please Login'),
                      //   //               // Message which will be pop up on the screen
                      //   //               // Action widget which will provide the user to acknowledge the choice
                      //   //               actions: [
                      //   //                 ElevatedButton(
                      //   //                   onPressed: () {
                      //   //                     //Get.back();
                      //   //                     showToast(
                      //   //                         value.message.toString());
                      //   //                     Get.toNamed(MyRouter.loginScreen);
                      //   //                   },
                      //   //                   child: Text(
                      //   //                       'Ok'), // FlatButton widget is used to make a text to work like a button
                      //   //                 ),
                      //   //               ],
                      //   //             );
                      //   //           });
                      //   //       // showToast(value.message.toString());
                      //   //       // Get.toNamed(MyRouter.loginScreen);
                      //   //     } else {
                      //   //       //print("otp-------${otpController.text}");
                      //   //       showToast(value.message.toString());
                      //   //     }
                      //   //   });
                      //   // } else {
                      //   //   showToast("required otp");
                      //   // }
                      //   //Get.toNamed(MyRouter.resetPassword);
                      // }, deviceWidth, expended: true, 40),
                      // Container(
                      //   width: 360,
                      //   height: 56,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: AppTheme.primaryColor
                      //   ),child: CommonButton('Verify', () {
                      //   showValidation.value = true;
                      //   // if (otpController.value.length == 4) {
                      //   //   signupVerification(Get.arguments[0],
                      //   //       otpController.value, context)
                      //   //       .then((value) {
                      //   //     if (value.status == true) {
                      //   //       bool goNext = false;
                      //   //       Future.delayed(Duration(seconds: 4))
                      //   //           .then((value1) {
                      //   //         if (goNext == false) {
                      //   //           goNext = true;
                      //   //           Get.back();
                      //   //           Get.toNamed(MyRouter.loginScreen);
                      //   //         }
                      //   //       });
                      //   //       showDialog(
                      //   //           context: context,
                      //   //           barrierDismissible: false,
                      //   //           builder: (context) {
                      //   //             return AlertDialog(
                      //   //               title: Text(
                      //   //                   'Your account has been verified. Please Login'), // To display the title it is optional
                      //   //               //content: Text('you are successfully signup!! Please Login'),
                      //   //               // Message which will be pop up on the screen
                      //   //               // Action widget which will provide the user to acknowledge the choice
                      //   //               actions: [
                      //   //                 ElevatedButton(
                      //   //                   onPressed: () {
                      //   //                     //Get.back();
                      //   //                     showToast(
                      //   //                         value.message.toString());
                      //   //                     Get.toNamed(MyRouter.loginScreen);
                      //   //                   },
                      //   //                   child: Text(
                      //   //                       'Ok'), // FlatButton widget is used to make a text to work like a button
                      //   //                 ),
                      //   //               ],
                      //   //             );
                      //   //           });
                      //   //       // showToast(value.message.toString());
                      //   //       // Get.toNamed(MyRouter.loginScreen);
                      //   //     } else {
                      //   //       //print("otp-------${otpController.text}");
                      //   //       showToast(value.message.toString());
                      //   //     }
                      //   //   });
                      //   // } else {
                      //   //   showToast("required otp");
                      //   // }
                      //   //Get.toNamed(MyRouter.resetPassword);
                      // }, deviceWidth, expended: true, 40 ),
                      // ),
                      SizedBox(
                        height: 56,
                        width: MediaQuery.of(context).size.width / 1,
                        child: ElevatedButton(onPressed: (){
                          Get.offAllNamed(MyRouter.resetPassword);
                        }, style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.buttonColor,
                        ),
                            child: Text('Verify',style: TextStyle(fontSize: 20),)),
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
        ));
  }
}
