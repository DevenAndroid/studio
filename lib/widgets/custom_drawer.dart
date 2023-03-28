import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studio_live/widgets/size_configre.dart';
import 'package:studio_live/widgets/string_title.dart';
import '../Router/my_router.dart';
import 'app_theme.dart';

class CustomDrawer extends StatefulWidget {
  final void Function(int index) onItemTapped;

  const CustomDrawer(this.onItemTapped, {Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool apiConnected = false;
  String? userName = 'Guest';
  String? userEmail = '';
  String? userImage;
  RxBool isLoggedIn = false.obs;

  SharedPreferences? pref;
  bool isLogin = true;

  @override
  void initState() {
    super.initState();

  }

  getSf() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      isLogin = pref!.getString('user') != null ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Drawer(
      child:  Container(
          color: Colors.grey,
          height: SizeConfig.heightMultiplier! * 100,
          width: SizeConfig.widthMultiplier! * 80,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: screenSize.width,
                  color: AppTheme.primaryColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(navigationPage.elementAt(_currentPage))
                          // Get.to(MyProfile());
                        },
                        child: Card(
                          elevation: 3,
                          shape: const CircleBorder(),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                              margin: const EdgeInsets.all(4),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.white,
                              ),
                              height: SizeConfig.heightMultiplier! * 10,
                              width: SizeConfig.heightMultiplier! * 10,
                              child: userImage != null
                                  ? userImage!.isEmpty
                                  ? Image.asset(
                                  'assets/icons/person_logo_1.png')
                                  : Image.network(
                                userImage.toString(),
                                fit: BoxFit.cover,
                              )
                                  : Image.asset(
                                  'assets/icons/person_logo_1.png')
                            // const Icon(
                            //         Icons.person,
                            //         size: 40,
                            //       )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 1.5,
                      ),
                      Text(userName != null ? userName.toString() : 'Guest',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * .5,
                      ),
                      Text(userEmail != null ? userEmail.toString() : 'guest@gmail.com',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 1.8,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier! * .5,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.orders,
                    icon: const Icon(
                      Icons.list_alt,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      SharedPreferences pref =
                      await SharedPreferences.getInstance();
                      if (pref.getString('user') != null) {
                        Get.back();
                        // Get.toNamed(MyRouter.myOrdersScreen);
                      } else {
                        Get.back();
                        // Get.toNamed(MyRouter.logInScreen);
                      }
                    }),
                const Divider(
                  height: 1,
                ),
                // _drawerTile(
                //     active: true,
                //     title: Strings.myBookings,
                //     icon: const Icon(
                //       Icons.library_books_outlined,
                //       size: 22,
                //       color: AppTheme.drawerIconColor,
                //     ),
                //     onTap: () async {
                //       SharedPreferences pref =
                //           await SharedPreferences.getInstance();
                //       if (pref.getString('user') != null) {
                //         Get.back();
                //         Get.toNamed(MyRouter.myBookingsScreen);
                //       } else {
                //         Get.back();
                //         Get.toNamed(MyRouter.logInScreen);
                //       }
                //     }),
                const Divider(
                  height: 1,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.account,
                    icon: const Icon(
                      Icons.person_outline,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      SharedPreferences pref =
                      await SharedPreferences.getInstance();
                      if (pref.getString('user') != null) {
                        Get.back();
                        widget.onItemTapped(4);
                      } else {
                        Get.back();
                        // Get.toNamed(MyRouter.logInScreen);
                      }
                    }),
                const Divider(
                  height: 1,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.wishlist,
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () {
                      Get.back();
                      widget.onItemTapped(3);
                    }),
                const Divider(
                  height: 1,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.notification,
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      SharedPreferences pref =
                      await SharedPreferences.getInstance();
                      if (pref.getString('user') != null) {
                        Get.back();
                        Get.toNamed(MyRouter.notificationScreen);
                      } else {
                        Get.back();
                        // Get.toNamed(MyRouter.logInScreen);
                      }
                    }),
                const Divider(
                  height: 1,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.address,
                    icon: const Icon(
                      Icons.location_on_outlined,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      SharedPreferences pref =
                      await SharedPreferences.getInstance();
                      if (pref.getString('user') != null) {
                        Get.back();
                        // Get.toNamed(MyRouter.addressScreen);
                      } else {
                        Get.back();
                        // Get.toNamed(MyRouter.logInScreen);
                      }
                    }),
                const Divider(
                  height: 1,
                ),
                _drawerTile(
                    active: true,
                    title: Strings.myCart,
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      Get.back();
                      widget.onItemTapped(1);
                    }),
                // const Divider(
                //   height: 1,
                // ),
                // _drawerTile(
                //     active: true,
                //     title: Strings.faq,
                //     icon: const Icon(
                //       Icons.question_mark_outlined,
                //       size: 22,
                //       color: AppTheme.drawerIconColor,
                //     ),
                //     onTap: () async {
                //       Get.back();
                //       launch("https://dinelah.com/faq/");
                //     }),
                !isLogin ? const SizedBox.shrink() : const Divider(),
                !isLogin
                    ? const SizedBox.shrink()
                    : _drawerTile(
                    active: true,
                    title: Strings.logOut,
                    icon: const Icon(
                      Icons.logout,
                      size: 22,
                      // color: AppTheme.drawerIconColor,
                    ),
                    onTap: () async {
                      // _getClientInformation();
                      Get.back();

                      SharedPreferences preferences = await SharedPreferences.getInstance();
                      await preferences.clear();
                      Get.offAllNamed(MyRouter.loginScreen,
                          arguments: ['mainScreen']);
                    }),
                const Divider(
                  height: 1,
                ),
              ],
            ),
          ),
        ));
  }

  //to get device Id
  // Future<void> _getClientInformation() async {
  //   ClientInformation? info;
  //   try {
  //     info = await ClientInformation.fetch();
  //   } on PlatformException {
  //     // print('Failed to get client information');
  //   }
  //   if (!mounted) return;
  //
  //   setState(() {
  //     _clientInfo = info!;
  //   });
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('deviceId', _clientInfo!.deviceId.toString());
  // }

  Widget _drawerTile(
      {required bool active,
        required String title,
        required Icon icon,
        required VoidCallback onTap}) {
    return ListTile(
      selectedTileColor: AppTheme.etBgColor,
      leading: icon,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: active ? const Color(0xFF939393) : Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: active ? onTap : null,
    );
  }
}
