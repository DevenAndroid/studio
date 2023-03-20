import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studio_live/ForgotPassword/forgot_password.dart';
import 'package:studio_live/Userflow/login_screen.dart';
import 'package:studio_live/Userflow/signup_screen.dart';
import '../ForgotPassword/reset_password.dart';
import '../Screens/onboarding_screen.dart';
import '../Screens/splash_screen.dart';
import '../ForgotPassword/signup_verification.dart';



class MyRouter{
  static var splashScreen ="/splashScreen";
  static var onBoarding ="/onBoarding";
  static var loginScreen ="/loginScreen";
  static var signupScreen ="/signupScreen";
  static var forgotPassword ="/forgotPassword";
  static var signupVerification ="/signupVerification";
  static var resetPassword ="/resetPassword";




  static var route = [
   GetPage(name: '/', page: () => const SplashScreen()),
   GetPage(name: MyRouter.splashScreen, page: () => const SplashScreen()),
   GetPage(name: MyRouter.onBoarding, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => SignupScreen()),
    GetPage(name: MyRouter.forgotPassword, page: () => ForgotPassword()),
    GetPage(name: MyRouter.signupVerification, page: () => SignupVerification()),
    GetPage(name: MyRouter.resetPassword, page: () => ResetPassword()),

  ];
}