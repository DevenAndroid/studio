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
import 'package:studio_live/studio_owner/thank_you_owner.dart';
import '../ForgotPassword/reset_password.dart';
import '../Screens/EventFlow/checkout_event_screen.dart';
import '../Screens/EventFlow/event_dashboard.dart';
import '../Screens/EventFlow/review_event_screen.dart';
import '../Screens/ParentDashboard/add_new_caregiver_screen.dart';
import '../Screens/ParentDashboard/privacy_policy.dart';
import '../Screens/ParentDashboard/setting_screen.dart';
import '../Screens/addcard_screen.dart';
import '../Screens/my_bookings.dart';
import '../Screens/onboarding_screen.dart';
import '../Screens/single_studio_screen.dart';
import '../Screens/splash_screen.dart';
import '../ForgotPassword/signup_verification.dart';
import '../studio_owner/add_new_teammember_screen.dart';
import '../studio_owner/booking_details_screen.dart';
import '../studio_owner/checkout_owner.dart';
import '../studio_owner/create_class.dart';
import '../studio_owner/my_booking_screen.dart';
import '../studio_owner/my_employee_screen.dart';
import '../studio_owner/reviews_screen.dart';
import '../studio_owner/studio_class_page_screen.dart';
import '../studio_owner/studio_deshboard.dart';
import '../studio_owner/studio_owner_class_screen.dart';
import '../studio_owner/studio_registration.dart';
import '../studio_owner/studio_withdrawal_screen.dart';
import '../studio_owner/subscripition_screen.dart';
import '../studio_owner/subscription_plan.dart';



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
  static var  addCardScreen="/addCardScreen";
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
  static var  settingScreen="/settingScreen";
  static var  createClassOwnerScreen="/createClassOwnerScreen";
  static var  thankYouOwnerScreen="/thankYouOwnerScreen";
  static var  reviewScreen="/reviewScreen";
  static var  subscriptionOwnerScreen="/subscriptionOwnerScreen";
  static var  checkoutOwnerScreen="/checkoutOwnerScreen";
  static var  subscriptionPlanScreen2 ="/subscriptionPlanScreen2";
  //studio owner
  static var  studioDashboardScreen ="/studioDashboardScreen";
  static var  studioRegistrationScreen ="/studioRegistrationScreen";
  static var  eventDashBoardScreen ="/eventDashBoardScreen";
  static var  studioOwnerClassScreen ="/studioOwnerClassScreen";
  static var  myEmployeeScreen ="/myEmployeeScreen";
  static var  addNewTeamScreen ="/addNewTeamScreen";
  static var  studioClassPageScreen ="/studioClassPageScreen";
  static var  myBookingStudioScreen ="/myBookingStudioScreen";
  static var  bookingDetailsScreen2 ="/bookingDetailsScreen2";
  static var  studioWithdrawalScreen ="/studioWithdrawalScreen";
  //static var  myEmployeeScreen ="/myEmployeeScreen";









  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: MyRouter.splashScreen, page: () => const SplashScreen()),
    GetPage(name: MyRouter.onBoarding, page: () => OnBoardingScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => const LoginScreen()),
    GetPage(name: MyRouter.signupScreen, page: () => const SignupScreen()),
    GetPage(name: MyRouter.forgotPassword, page: () => const ForgotPassword()),
    GetPage(name: MyRouter.signupVerification, page: () => const SignupVerification()),
    GetPage(name: MyRouter.resetPassword, page: () => const ResetPassword()),
    GetPage(name: MyRouter.homeScreen, page: () => const HomeScreen()),
    GetPage(name: MyRouter.bottomNavBar, page: () => const BottomNavbar()),
    GetPage(name: MyRouter.studioScreen, page: () => const StudioScreen()),
    GetPage(name: MyRouter.notificationScreen, page: () => const NotificationScreen()),
    GetPage(name: MyRouter.studioClassScreen, page: () => const StudioClassScreen()),
    GetPage(name: MyRouter.bookingScreen, page: () => const BookingInformationScreen()),
    GetPage(name: MyRouter.checkoutScreen, page: () => const CheckoutScreen()),
    GetPage(name: MyRouter.addCardScreen, page: () => const AddCardScreen()),
    GetPage(name: MyRouter.thankYouScreen, page: () => const ThankYouScreen()),
    GetPage(name: MyRouter.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: MyRouter.editProfileScreen, page: () => const EditProfile()),
    GetPage(name: MyRouter.splashScreen2, page: () => const SplashScreen2()),
    GetPage(name: MyRouter.studioListScreen, page: () => const StudioListScreen()),
    GetPage(name: MyRouter.savedPlacesScreen, page: () => const SavedPlacesScreen()),
    GetPage(name: MyRouter.myBookingScreen, page: () => const MyBookingScreen()),
    GetPage(name: MyRouter.bookingDetailsScreen, page: () => const BookingDetailsScreen()),
    GetPage(name: MyRouter.leaveReviewScreen, page: () => const ReviewScreen()),
    GetPage(name: MyRouter.leaveReviewScreen, page: () => const NotificationScreen()),
    GetPage(name: MyRouter.cancellationPolicyScreen, page: () => const CancellationPolicyScreen()),
    GetPage(name: MyRouter.parentDashboardScreen, page: () => const ParentDashboardScreen()),
    GetPage(name: MyRouter.childListScreen, page: () => const ChildListScreen()),
    GetPage(name: MyRouter.addNewChildScreen, page: () => const AddNewChildScreen()),
    GetPage(name: MyRouter.caregiverListScreen, page: () => const CareGiverListScreen()),
    GetPage(name: MyRouter.addNewCaregiverScreen, page: () => const AddNewCareGiverScreen()),
    GetPage(name: MyRouter.privacyPolicyScreen, page: () => const PrivacyPolicyScreen()),
    GetPage(name: MyRouter.faqScreen, page: () => const FaqScreen()),
    GetPage(name: MyRouter.supportScreen, page: () => const SupportScreen()),
    GetPage(name: MyRouter.businessRegistrationScreen, page: () => const BusinessRegistrationScreen()),
    GetPage(name: MyRouter.eventDashBoardScreen, page: () => const EventDashBoardScreen()),
    GetPage(name: MyRouter.createNewEventScreen, page: () => const CreateNewEventScreen()),
    GetPage(name: MyRouter.eventListScreen, page: () => const EventListScreen()),
    GetPage(name: MyRouter.discoEventScreen, page: () => const DiscoEventScreen()),
    GetPage(name: MyRouter.myBookingEventScreen, page: () => const MyBookingEventScreen()),
    GetPage(name: MyRouter.myBookingDetailsEventScreen, page: () => const MyBookingDetailsEventScreen()),
    GetPage(name: MyRouter.reviewEventScreen, page: () => const ReviewEventScreen()),
    GetPage(name: MyRouter.subscriptionPlanScreen, page: () => const SubscriptionPlanScreen()),
    GetPage(name: MyRouter.checkoutEventScreen, page: () => const CheckoutEventScreen()),
    GetPage(name: MyRouter.thankYouEventScreen, page: () => const ThankYouEventScreen()),
    GetPage(name: MyRouter.withDrawlMoneyScreen, page: () => const WithDrawlMoneyScreen()),
    GetPage(name: MyRouter.settingScreen, page: () => const SettingScreen()),
    GetPage(name: MyRouter.createClassOwnerScreen, page: () => const CreateClassOwner()),
    GetPage(name: MyRouter.thankYouOwnerScreen, page: () => const ThankyouOwner()),
    GetPage(name: MyRouter.reviewScreen, page: () => const ReviewOwnerScreen()),
    GetPage(name: MyRouter.subscriptionOwnerScreen, page: () => const SubScripitionScreenOwner()),
    GetPage(name: MyRouter.checkoutOwnerScreen, page: () => const CheckoutOwner()),
    GetPage(name: MyRouter.subscriptionPlanScreen2, page: () => const SubscripitionPlanScreen()),
    GetPage(name: MyRouter.studioDashboardScreen, page: () => const Studio_dashboradScreen()),
    GetPage(name: MyRouter.studioRegistrationScreen, page: () => const Studio_registrationScreen()),
    GetPage(name: MyRouter.studioOwnerClassScreen, page: () => const StudioOwnerClassScreen()),
    GetPage(name: MyRouter.myEmployeeScreen, page: () => const MyEmployeeScreen()),
    GetPage(name: MyRouter.addNewTeamScreen, page: () => const AddNewTeamMemberScreen()),
    GetPage(name: MyRouter.studioClassPageScreen, page: () => const StudioClassPageScreen()),
    GetPage(name: MyRouter.myBookingStudioScreen, page: () => const MyBookingScreen2()),
    GetPage(name: MyRouter.bookingDetailsScreen2, page: () => const BookingDetailsScreen2()),
    GetPage(name: MyRouter.studioWithdrawalScreen, page: () => const StudioWithDrawlScreen()),





  ];
}