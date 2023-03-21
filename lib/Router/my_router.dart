import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studio_live/ForgotPassword/forgot_password.dart';
import 'package:studio_live/Screens/booking_information.dart';
import 'package:studio_live/Screens/home_screen.dart';
import 'package:studio_live/Screens/studio_class_screen.dart';
import 'package:studio_live/Userflow/bottom_nav_bar.dart';
import 'package:studio_live/Userflow/login_screen.dart';
import 'package:studio_live/Userflow/signup_screen.dart';
import '../ForgotPassword/reset_password.dart';
import '../Screens/onboarding_screen.dart';
import '../Screens/single_studio_screen.dart';
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
  static var homeScreen ="/homeScreen";
  static var bottomNavBar ="/bottomNavBar";
  static var studioScreen ="/studioScreen";
  static var studioClassScreen ="/studioClassScreen";
  static var  bookingScreen="/bookingScreen";





  static var route = [
   GetPage(name: '/', page: () => const HomeScreen()),
   GetPage(name: MyRouter.splashScreen, page: () => const SplashScreen()),
   GetPage(name: MyRouter.onBoarding, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => SignupScreen()),
    GetPage(name: MyRouter.forgotPassword, page: () => ForgotPassword()),
    GetPage(name: MyRouter.signupVerification, page: () => SignupVerification()),
    GetPage(name: MyRouter.resetPassword, page: () => ResetPassword()),
    GetPage(name: MyRouter.homeScreen, page: () => HomeScreen()),
    GetPage(name: MyRouter.bottomNavBar, page: () => BottomNavbar()),
    GetPage(name: MyRouter.studioScreen, page: () => StudioScreen()),
    GetPage(name: MyRouter.studioClassScreen, page: () => StudioClassScreen()),
    GetPage(name: MyRouter.bookingScreen, page: () => BookingInformationScreen()),

  ];
}