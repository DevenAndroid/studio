import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../Router/my_router.dart';
import '../Utils/images.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import '../widgets/dimentions.dart';

class EventLoginScreen extends StatefulWidget {
  const EventLoginScreen({Key? key}) : super(key: key);

  @override
  State<EventLoginScreen> createState() => _EventLoginScreenState();
}

class _EventLoginScreenState extends State<EventLoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool checkboxColor = false.obs;
  var obscureText = true;

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
                                  text: "Sign In",
                                  fontSize: AddSize.size25,
                                  color: AppTheme.headingColor,
                                  fontWeight: FontWeight.bold,
                                ),SizedBox(width: 20,),
                                Image.asset(
                                  "assets/images/faceid1.png",
                                  height: AddSize.size10 * 3,
                                  width: AddSize.size10 * 3,
                                  fit: BoxFit.contain,
                                ),

                                // Image.asset("assets/images/Vector.png",width: 30,height: 30,)

                              ],
                            ),
                            SizedBox(
                              height: AddSize.size10,
                            ),

                            SizedBox(
                              height: AddSize.size30,
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
                              height: AddSize.size30,
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
                                    // color: Colors.red,
                                    color: Color(0xFFFFA629),
                                  )),
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'Please enter your password'),
                                MinLengthValidator(8,
                                    errorText: 'Password must be at least 8 characters, with 1 special character & 1 numerical'),
                                PatternValidator(
                                    r"(?=.*\W)(?=.*?[#?!@$%^&*-])(?=.*[0-9])",
                                    errorText: "Password must be at least with 1 special character & 1 numerical"),
                              ]),
                            ),
                            SizedBox(
                              height: AddSize.size20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale: 1.0,
                                      child:    Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor: checkboxColor
                                              .value == false ? Colors.grey
                                              .withOpacity(.78) : Colors.grey,

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 3.0),
                                          child: Checkbox(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4)),
                                              materialTapTargetSize: MaterialTapTargetSize
                                                  .shrinkWrap,
                                              value: value,
                                              activeColor: AppTheme
                                                  .primaryColor,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  value =
                                                  newValue!;
                                                  checkboxColor.value =
                                                  !newValue!;
                                                });
                                              }),
                                        ),
                                      ),
                                      // child: Checkbox(
                                      //   shape: RoundedRectangleBorder(
                                      //       borderRadius: BorderRadius.circular(4)),
                                      //   checkColor: Colors.white,
                                      //   activeColor: AppTheme.primaryColor,
                                      //   value: this.value,
                                      //   onChanged: ( value) {
                                      //     if(this.value == false){
                                      //       setState(() {
                                      //         this.value = true;
                                      //       });
                                      //     }
                                      //     else if(this.value == true)  {
                                      //       setState(() {
                                      //         this.value = false;
                                      //       });
                                      //     }
                                      //
                                      //   },
                                      // ),
                                    ),
                                    AddText(text: 'Remember Me',fontSize: 14,fontWeight: FontWeight.w500,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(onTap: (){
                                      Get.toNamed(MyRouter.forgotPassword);
                                    },
                                        child: AddText(text: 'Forgot Password',fontSize: 14,color:AppTheme.primaryColor,decoration: TextDecoration.underline,)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: AddSize.size30,),
                            CommonButtonField('LOG IN', () {
                              checkboxColor.value = true;
                              if (formKey.currentState!.validate()) {
                                // login(emailController.text,
                                //     passwordController.text, context)
                                //     .then((value) async {
                                //   if (value.data!.token != null) {
                                //     showToast("Login Successful");
                                Get.toNamed(MyRouter.eventDashBoardScreen);
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
                            SizedBox(height: AddSize.size40,),
                            SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(Igs.orImg)),
                            SizedBox(height: AddSize.size40,),
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
                                    child: SvgPicture.asset('assets/images/Gmail.svg'),
                                  ),
                                  Text('Sign in with google',style: TextStyle(color: Color(0xFF39439D),fontSize: 15,fontWeight: FontWeight.w500),)
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
                                      text: "Don't have an account? ",
                                      style: TextStyle(
                                          color: AppTheme.filtter,
                                          fontFamily: 'Poppins',
                                          fontSize: AddSize.size15,
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'Sign up ',
                                        style: TextStyle(
                                          fontSize: AddSize.font16,
                                          color: AppTheme.linkColor,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed(MyRouter.eventSignupScreen);
                                          }),
                                  ],
                                ),
                              ),
                            ),
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
