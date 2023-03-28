import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studio_live/ForgotPassword/forgot_password.dart';
import 'package:studio_live/Screens/EventFlow/bussiness_registration_screen.dart';
import 'package:studio_live/Screens/EventFlow/create_new_event_screen.dart';
import 'package:studio_live/Screens/EventFlow/disco_event_screen.dart';
import 'package:studio_live/Screens/EventFlow/event_list_screen.dart';
import 'package:studio_live/Screens/EventFlow/mybooking_details_event_screen.dart';
import 'package:studio_live/Screens/EventFlow/mybooking_event_screen.dart';
import 'package:studio_live/Screens/EventFlow/subscription_plan_screen.dart';
import 'package:studio_live/Screens/EventFlow/thankyou_event_screen.dart';
import 'package:studio_live/Screens/EventFlow/withdrawl_money_screen.dart';
import 'package:studio_live/Screens/ParentDashboard/add_new_child_screen.dart';
import 'package:studio_live/Screens/ParentDashboard/caregiver_list.dart';
import 'package:studio_live/Screens/ParentDashboard/child_list.dart';
import 'package:studio_live/Screens/ParentDashboard/faq_screen.dart';
import 'package:studio_live/Screens/ParentDashboard/parent_dashboard_screen.dart';
import 'package:studio_live/Screens/ParentDashboard/support_screen.dart';
import 'package:studio_live/Screens/booking_details.dart';
import 'package:studio_live/Screens/cancellation_policy_screen.dart';
import 'package:studio_live/Screens/child_information.dart';
import 'package:studio_live/Screens/checkout_screen.dart';
import 'package:studio_live/Screens/edit_profile.dart';
import 'package:studio_live/Screens/home_screen.dart';
import 'package:studio_live/Screens/leave_review_screen.dart';
import 'package:studio_live/Screens/notification_screen.dart';
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
import '../Screens/EventFlow/checkout_event_screen.dart';
import '../Screens/EventFlow/review_event_screen.dart';
import '../Screens/ParentDashboard/add_new_caregiver_screen.dart';
import '../Screens/ParentDashboard/privacy_policy.dart';
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
  static var  notificationScreen="/notificationScreen";
  static var  cancellationPolicyScreen="/cancellationPolicyScreen";
  static var  parentDashboardScreen="/parentDashboardScreen";
  static var  childListScreen="/childListScreen";
  static var  addNewChildScreen="/addNewChildScreen";
  static var  caregiverListScreen="/caregiverListScreen";
  static var  addNewCaregiverScreen="/addNewCaregiverScreen";
  static var  privacyPolicyScreen="/privacyPolicyScreen";
  static var  faqScreen="/faqScreen";
  static var  supportScreen="/supportScreen";
  static var  businessRegistrationScreen="/businessRegistrationScreen";
  static var  createNewEventScreen="/createNewEventScreen";
  static var  eventListScreen="/eventListScreen";
  static var  discoEventScreen="/discoEventScreen";
  static var  myBookingEventScreen="/myBookingEventScreen";
  static var  myBookingDetailsEventScreen="/myBookingDetailsEventScreen";
  static var  reviewEventScreen="/reviewEventScreen";
  static var  subscriptionPlanScreen="/subscriptionPlanScreen";
  static var  checkoutEventScreen="/checkoutEventScreen";
  static var  thankYouEventScreen="/thankYouEventScreen";
  static var  withDrawlMoneyScreen="/withDrawlMoneyScreen";










  static var route = [
   GetPage(name: '/', page: () => const SplashScreen()),
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
    GetPage(name: MyRouter.leaveReviewScreen, page: () => NotificationScreen()),
    GetPage(name: MyRouter.cancellationPolicyScreen, page: () => CancellationPolicyScreen()),
    GetPage(name: MyRouter.parentDashboardScreen, page: () => ParentDashboardScreen()),
    GetPage(name: MyRouter.childListScreen, page: () => ChildListScreen()),
    GetPage(name: MyRouter.addNewChildScreen, page: () => AddNewChildScreen()),
    GetPage(name: MyRouter.caregiverListScreen, page: () => CareGiverListScreen()),
    GetPage(name: MyRouter.addNewCaregiverScreen, page: () => AddNewCareGiverScreen()),
    GetPage(name: MyRouter.privacyPolicyScreen, page: () => PrivacyPolicyScreen()),
    GetPage(name: MyRouter.faqScreen, page: () => FaqScreen()),
    GetPage(name: MyRouter.supportScreen, page: () => SupportScreen()),
    GetPage(name: MyRouter.businessRegistrationScreen, page: () => BusinessRegistrationScreen()),
    GetPage(name: MyRouter.createNewEventScreen, page: () => CreateNewEventScreen()),
    GetPage(name: MyRouter.eventListScreen, page: () => EventListScreen()),
    GetPage(name: MyRouter.discoEventScreen, page: () => DiscoEventScreen()),
    GetPage(name: MyRouter.myBookingEventScreen, page: () => MyBookingEventScreen()),
    GetPage(name: MyRouter.myBookingDetailsEventScreen, page: () => MyBookingDetailsEventScreen()),
    GetPage(name: MyRouter.reviewEventScreen, page: () => ReviewEventScreen()),
    GetPage(name: MyRouter.subscriptionPlanScreen, page: () => SubscriptionPlanScreen()),
    GetPage(name: MyRouter.checkoutEventScreen, page: () => CheckoutEventScreen()),
    GetPage(name: MyRouter.thankYouEventScreen, page: () => ThankYouEventScreen()),
    GetPage(name: MyRouter.withDrawlMoneyScreen, page: () => WithDrawlMoneyScreen()),



  ];
}