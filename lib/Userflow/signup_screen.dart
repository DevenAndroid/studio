import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Router/my_router.dart';
import '../Utils/images.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import '../widgets/dimentions.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  var obscureText = true;
  var obscureText1 = true;
  String dropdownvalue = 'Male';
  RxString genderType = "".obs;
  bool value = false;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var deviceWidth =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: AppTheme.primaryColor,
              height: MediaQuery.of(context).size.height * 1,
              child: Stack(
                children: [
                  Container(
                    // padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(top: AddSize.size15),
                      color: AppTheme.primaryColor,
                      child: Stack(
                        children: [
                          //Text('Sourav sdsdsjkdjsdjskdjskdjskdjskdjskdjskdjskdjskdsjkdsjkdsjkd'),
                          // Image.asset(
                          //   "assets/images/bg.png",
                          //   height: AddSize.screenHeight * .5,
                          //   width: AddSize.screenWidth * 2,
                          //   fit: BoxFit.cover,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Maskgroup.png",
                                  height: AddSize.size10 * 15,
                                  width: AddSize.size10 * 15,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  width: AddSize.size10,
                                ),
                                // Image.asset(
                                //   "assets/images/textmain2.png",
                                //   height: AddSize.size10 * 6,
                                //   width: AddSize.size110,
                                //   fit: BoxFit.contain,
                                // ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    top: AddSize.size30 * 5,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              //spreadRadius: 40,
                              blurRadius: 1,
                              blurStyle: BlurStyle.solid,
                              offset: const Offset(
                                  1, 1), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .4,
                      margin: EdgeInsets.only(top: AddSize.size10),
                      padding: EdgeInsets.only(
                        top: AddSize.size20,
                        left: AddSize.size20,
                        right: AddSize.size20,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AddText(
                                  text: "Sign Up",
                                  fontSize: AddSize.size10 * 3,
                                  color: AppTheme.headingColor,
                                  fontWeight: FontWeight.bold,
                                ),SizedBox(width: 20,),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),

                            SizedBox(
                              height: AddSize.size30,
                            ),
                            AddText(
                              text: "Business Type",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Select ",
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
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            AddText(
                              text: "Full Name",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            CommonTextFieldWidget(
                              controller: emailController,
                              hint: 'Enter Your name',
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
                            SizedBox(
                              height: AddSize.size20,
                            ),

                            AddText(
                              text: "Phone Number",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            CommonTextFieldWidget(
                              controller: emailController,
                              hint: 'Enter Phone Number',
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
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            AddText(
                              text: "Your Email",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            CommonTextFieldWidget(
                              controller: emailController,
                              hint: 'Enter Your Email',
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
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            AddText(
                              text: "Your Location",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            CommonTextFieldWidget(
                              controller: emailController,
                              hint: 'Enter Your Location',
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
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            AddText(
                              text: "Password",
                              fontSize: AddSize.size16,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),
                            CommonTextFieldWidget(
                              controller: passwordController,
                              obscureText: obscureText,
                              hint: 'Enter Your Password',
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
                                    color: Color(0xFF53B176),
                                  )),
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'Please enter Password'),
                                MinLengthValidator(8,
                                    errorText:
                                    'Password must be at least 8 digits long'),
                                PatternValidator(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{8,}$",
                                    errorText: 'Password must be strong')
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
                              fontSize: AddSize.font18,
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
                                    color: Color(0xFF53B176),
                                  )),
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return 'Conform password is required ';
                                } else if (value!.trim() !=
                                    confirmPasswordController.text.trim()) {
                                  return 'Conform password not matching';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
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
                                     AddText(text: 'I agree to the',fontSize: 14,),
                                    SizedBox(width: 3,),
                                    AddText(text: 'Terms and Conditions',fontSize: 14,color: AppTheme.primaryColor,),
                                    SizedBox(width: 3,),
                                    AddText(text: 'and',fontSize: 14),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 47),
                                      child: AddText(text: 'Privacy Policy',fontSize: 14,color: AppTheme.primaryColor,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            CommonButtonField('CREATE ACCOUNT', () {
                              if (formKey.currentState!.validate()) {
                                // login(emailController.text,
                                //     passwordController.text, context)
                                //     .then((value) async {
                                //   if (value.data!.token != null) {
                                //     showToast("Login Successful");
                                Get.offAllNamed(MyRouter.signupVerification);
                                //     SharedPreferences sharedPreference =
                                //     await SharedPreferences.getInstance();
                                //     sharedPreference.setString(
                                //         "userData", jsonEncode(value));
                                //   } else {
                                //     showToast(value.data!.code
                                //         .toString()
                                //         .replaceAll(
                                //       "[lp_jwt_auth] invalid_username",
                                //       " Phone Number not registered please sign up",
                                //     )
                                //         .replaceAll(
                                //         "[lp_jwt_auth] incorrect_password",
                                //         "Incorrect Password")
                                //         .replaceAll("[lp_jwt_auth] invalid_email",
                                //         "Invalid email"));
                                //   }
                                // });
                              }
                            }, deviceWidth, AddSize.size50),
                            SizedBox(height: AddSize.size30,),
                            // SizedBox(
                            //     height: 10,
                            //     width: MediaQuery.of(context).size.width,
                            //     child: Image.asset(Igs.orImg)),
                            // AddText(text: 'Or',
                            // fontSize: 18,
                            // ),
                            // Center(child: Text('Or',style: TextStyle(fontSize: 20),)),
                            SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(Igs.orImg)),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              height: 60,
                              decoration:  BoxDecoration(
                                  border: Border.all(color: Color(0xFF39439D)),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset("assets/images/Group1000003765.png",),
                                  ),

                                  Text('Sign in with google',style: TextStyle(color: Color(0xFF39439D),fontSize: 18),)
                                ],
                              ),
                            ),
                            SizedBox(height: AddSize.size40,),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: AppTheme.primaryColor,
                                      fontSize: AddSize.size15),
                                  children: [
                                    TextSpan(
                                      text: "Already a member ? ",
                                      style: TextStyle(
                                          color: AppTheme.filtter,
                                          fontFamily: 'Poppins',
                                          fontSize: AddSize.size15,
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'Sign in ',
                                        style: TextStyle(
                                          fontSize: AddSize.font16,
                                          color: AppTheme.linkColor,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed(MyRouter.loginScreen);
                                          }),
                                  ],
                                ),
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.centerRight,
                            //   child: InkWell(
                            //     onTap: () {
                            //       Get.toNamed(MyRouter.addemail);
                            //     },
                            //     child: AddText(
                            //       text: "Forgot Password",
                            //       fontSize: AddSize.size14,
                            //       decoration: TextDecoration.underline,
                            //       color: AppTheme.linkColor,
                            //       fontWeight: FontWeight.w400,
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: AddSize.size40,
                            ),
                            // CommonButtonField('Sign In', () {
                            //   if (formKey.currentState!.validate()) {
                            //     login(emailController.text,
                            //         passwordController.text, context)
                            //         .then((value) async {
                            //       if (value.data!.token != null) {
                            //         showToast("Login Successful");
                            //         Get.offAllNamed(MyRouter.bottomNavbar);
                            //         SharedPreferences sharedPreference =
                            //         await SharedPreferences.getInstance();
                            //         sharedPreference.setString(
                            //             "userData", jsonEncode(value));
                            //       } else {
                            //         showToast(value.data!.code
                            //             .toString()
                            //             .replaceAll(
                            //           "[lp_jwt_auth] invalid_username",
                            //           " Phone Number not registered please sign up",
                            //         )
                            //             .replaceAll(
                            //             "[lp_jwt_auth] incorrect_password",
                            //             "Incorrect Password")
                            //             .replaceAll("[lp_jwt_auth] invalid_email",
                            //             "Invalid email"));
                            //       }
                            //     });
                            //   }
                            // }, deviceWidth, AddSize.size50),
                            addHeight(30),
                            // SizedBox(
                            //     height: 10,
                            //     width: MediaQuery.of(context).size.width,
                            //     child: Image.asset(Igs.orImg)),
                            addHeight(30),

                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     InkWell(
                            //       onTap: () async {
                            //         await _googleSignIn.signOut();
                            //         await _googleSignIn.signIn().then((value1) {
                            //           sociallogin(value1!.id, value1.email,
                            //               "google", context)
                            //               .then((value2) async {
                            //             if (value2.status == true) {
                            //               showToast(value2.message.toString());
                            //               Get.offAllNamed(MyRouter.bottomNavbar);
                            //               SharedPreferences sharedPreference =
                            //               await SharedPreferences.getInstance();sharedPreference.setString("userData", jsonEncode(value2));
                            //               print(await getUserToken());
                            //               print(await getUserId());
                            //             } else {
                            //               // bool goNext = false;
                            //               // Future.delayed(Duration(seconds: 3)).then((value1) {
                            //               //   if (goNext == false) {
                            //               //     goNext = true;
                            //               //     Get.back();
                            //               //     Get.offNamed(MyRouter.loginScreen);
                            //               //   }
                            //               // });
                            //               showDialog(
                            //                   context: context,
                            //                   barrierDismissible: false,
                            //                   builder: (context) {
                            //                     return AlertDialog(
                            //                       //title: Text('Your account has been verified. Please Login'),           // To display the title it is optional
                            //                       content: const Text(
                            //                           'Your mail is already registered. Please try to login using password'),
                            //                       // Message which will be pop up on the screen
                            //                       // Action widget which will provide the user to acknowledge the choice
                            //                       actions: [
                            //                         ElevatedButton(
                            //                           onPressed: () {
                            //                             Get.back();
                            //                             Get.toNamed(MyRouter
                            //                                 .loginScreen);
                            //                           },
                            //                           child: const Text(
                            //                               'Ok'), // FlatButton widget is used to make a text to work like a button
                            //                         ),
                            //                       ],
                            //                     );
                            //                   });
                            //               // showToast(value2.message.toString());
                            //             }
                            //
                            //           });
                            //         });
                            //       },
                            //       child: Container(
                            //         height: 40,
                            //         width:MediaQuery.of(context).size.width / 3,
                            //         decoration: const BoxDecoration(
                            //             image: DecorationImage(
                            //                 image:
                            //                 AssetImage(Igs.gmailImgBox))),
                            //       ),
                            //     ),
                            //     addWidth(5),
                            //     InkWell(
                            //       onTap: () async {
                            //         signInFaceBook();
                            //       },
                            //       child: Container(
                            //         width:
                            //         MediaQuery.of(context).size.width / 3,
                            //         height: 40,
                            //         decoration: const BoxDecoration(
                            //             image: DecorationImage(
                            //                 image: AssetImage(Igs.fblImgBox))),
                            //       ),
                            //     ),
                            //     addWidth(6),
                            //     // Container(
                            //     //   width: MediaQuery.of(context).size.width / 3,
                            //     //   height: 40,
                            //     //   decoration: const BoxDecoration(
                            //     //       image: DecorationImage(
                            //     //           image: AssetImage(Igs.appleImgBox))),
                            //     // ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
