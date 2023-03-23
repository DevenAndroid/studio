import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studio_live/ForgotPassword/forgot_password.dart';
import 'package:studio_live/Screens/booking_details.dart';
import 'package:studio_live/Screens/child_information.dart';
import 'package:studio_live/Screens/checkout_screen.dart';
import 'package:studio_live/Screens/edit_profile.dart';
import 'package:studio_live/Screens/home_screen.dart';
import 'package:studio_live/Screens/leave_review_screen.dart';
import 'package:studio_live/Screens/profile_screen.dart';
import 'package:studio_live/Screens/saved_places.dart';
import 'package:studio_live/Screens/splash_screen2.dart';
import 'package:studio_live/Screens/studio_class_screen.dart';
import 'package:studio_live/Screens/studio_list_screen.dart';
import 'package:studio_live/Screens/thankyou_screen.dart';
import 'package:studio_live/Userflow/bottom_nav_bar.dart';
import 'package:studio_live/Userflow/login_screen.dart';
import 'package:studio_live/Userflow/signup_screen.dart';
import '../ForgotPassword/reset_password.dart';
import '../Screens/my_bookings.dart';
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
  static var  checkoutScreen="/checkoutScreen";
  static var  thankYouScreen="/thankYouScreen";
  static var  profileScreen="/profileScreen";
  static var  editProfileScreen="/editProfileScreen";
  static var  splashScreen2="/splashScreen2";
  static var  studioListScreen="/studioListScreen";
  static var  savedPlacesScreen="/savedPlacesScreen";
  static var  myBookingScreen="/myBookingScreen";
  static var  bookingDetailsScreen="/bookingDetailsScreen";
  static var  leaveReviewScreen="/leaveReviewScreen";






  static var route = [
   GetPage(name: '/', page: () => const StudioListScreen()),
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
    GetPage(name: MyRouter.checkoutScreen, page: () => CheckoutScreen()),
    GetPage(name: MyRouter.thankYouScreen, page: () => ThankYouScreen()),
    GetPage(name: MyRouter.profileScreen, page: () => ProfileScreen()),
    GetPage(name: MyRouter.editProfileScreen, page: () => EditProfile()),
    GetPage(name: MyRouter.splashScreen2, page: () => SplashScreen2()),
    GetPage(name: MyRouter.studioListScreen, page: () => StudioListScreen()),
    GetPage(name: MyRouter.savedPlacesScreen, page: () => SavedPlacesScreen()),
    GetPage(name: MyRouter.myBookingScreen, page: () => MyBookingScreen()),
    GetPage(name: MyRouter.bookingDetailsScreen, page: () => BookingDetailsScreen()),
    GetPage(name: MyRouter.leaveReviewScreen, page: () => ReviewScreen()),


  ];
}