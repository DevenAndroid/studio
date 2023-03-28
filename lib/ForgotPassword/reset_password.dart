import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
//
// import '../../../repository/reset_password_repository.dart';
// import '../../../resource/app_theme.dart';
// import '../../../resource/helper_class.dart';
// import '../../../routers/my_router.dart';
import '../../../widgets/add_text.dart';
import '../../../widgets/common_appbar.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_textfield.dart';
import '../../../widgets/dimentions.dart';
import '../Router/my_router.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button1.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
      BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final maintext = "Please enter your new password.";

  final formKey = GlobalKey<FormState>();
  var obscureText = true;
  var obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFA629),
        leading: InkWell(onTap: (){
          print('Ok done');
          Get.back();
          },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text("Create New Password",style: TextStyle(color: Colors.white),),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 25),
        //   child: Text("Create New Password",style: TextStyle(color: Colors.white),),
        // ),
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
                  height: AddSize.size250,
                  // width: AddSize.size40,
                  decoration: const BoxDecoration(
                    // boxShadow: blurBoxShadow,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/padlock1.png"),
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
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Your password must be different from previous used password.',
                     // textAlign: TextAlign.center,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font18,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),

                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'New Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font14,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: newPasswordController,
                      obscureText: obscureText,
                      hint: 'New password',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText
                              ? const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                              : const Icon(
                            Icons.visibility,
                            color: Color(0xFFFFA629),
                          )),
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Password is required'),
                        MinLengthValidator(8,errorText:'Password must be at least 8 digits long'),
                        PatternValidator(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
                            errorText:'Password must be contain strong pattern')
                      ]),
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Confirm Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font14,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: confirmPasswordController,
                      obscureText: obscureText1,
                      hint: 'Confirm password',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText1 = !obscureText1;
                            });
                          },
                          child: obscureText1
                              ? const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )
                              : const Icon(
                            Icons.visibility,
                            color: Color(0xFFFFA629),
                          )),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Conform password is required ';
                        } else if (value!.trim() !=
                            newPasswordController.text.trim()) {
                          return 'Conform password not matching';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: AddSize.size60,
                    ),
                    // Center(
                    //   child: CommonButton('Save Password', () {
                    //     if (formKey.currentState!.validate()) {
                    //       // resetPassword(
                    //       //     Get.arguments[0],
                    //       //     newPasswordController.text,
                    //       //     confirmPasswordController.text)
                    //       //     .then((value) {
                    //       //   if (value.status == true) {
                    //       //     bool goNext = false;
                    //       //     Future.delayed(Duration(seconds: 3))
                    //       //         .then((value1) {
                    //       //       if (goNext == false) {
                    //       //         goNext = true;
                    //       //         Get.back();
                    //       //         Get.toNamed(MyRouter.loginScreen);
                    //       //       }
                    //       //     });
                    //       //     showDialog(
                    //       //         context: context,
                    //       //         builder: (context) {
                    //       //           return AlertDialog(
                    //       //             title: Text(
                    //       //                 'Your password has changed successfully'), // To display the title it is optional
                    //       //             //content: Text('you are successfully signup!! Please Login'),
                    //       //             // Message which will be pop up on the screen
                    //       //             // Action widget which will provide the user to acknowledge the choice
                    //       //             actions: [
                    //       //               ElevatedButton(
                    //       //                 onPressed: () {
                    //       //                   //Get.back();
                    //       //                   //showToast(value.message.toString());
                    //       //                   Get.toNamed(MyRouter.loginScreen);
                    //       //                 },
                    //       //                 child: Text(
                    //       //                     'Ok'), // FlatButton widget is used to make a text to work like a button
                    //       //               ),
                    //       //             ],
                    //       //           );
                    //       //         });
                    //       //     // showToast(value.message);
                    //       //     //Get.toNamed(MyRouter.loginScreen);
                    //       //   } else {
                    //       //     showToast(value.message);
                    //       //   }
                    //       // });
                    //     }
                    //   }, deviceWidth, expended: true, AddSize.size60),
                    // ),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width / 1,
                      child: ElevatedButton(onPressed: (){
                        if (formKey.currentState!.validate()) {
                          // resetPassword(
                          //     Get.arguments[0],
                          //     newPasswordController.text,
                          //     confirmPasswordController.text)
                          //     .then((value) {
                          //   if (value.status == true) {
                          //     bool goNext = false;
                          //     Future.delayed(Duration(seconds: 3))
                          //         .then((value1) {
                          //       if (goNext == false) {
                          //         goNext = true;
                          //         Get.back();
                                  Get.toNamed(MyRouter.loginScreen);
                          //       }
                          //     });
                          //     showDialog(
                          //         context: context,
                          //         builder: (context) {
                          //           return AlertDialog(
                          //             title: Text(
                          //                 'Your password has changed successfully'), // To display the title it is optional
                          //             //content: Text('you are successfully signup!! Please Login'),
                          //             // Message which will be pop up on the screen
                          //             // Action widget which will provide the user to acknowledge the choice
                          //             actions: [
                          //               ElevatedButton(
                          //                 onPressed: () {
                          //                   //Get.back();
                          //                   //showToast(value.message.toString());
                          //                   Get.toNamed(MyRouter.loginScreen);
                          //                 },
                          //                 child: Text(
                          //                     'Ok'), // FlatButton widget is used to make a text to work like a button
                          //               ),
                          //             ],
                          //           );
                          //         });
                          //     // showToast(value.message);
                          //     //Get.toNamed(MyRouter.loginScreen);
                          //   } else {
                          //     showToast(value.message);
                          //   }
                          // });
                        }
                      }, style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.buttonColor,
                      ),
                          child: Text('Save Password',style: TextStyle(fontSize: 20),)),
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
