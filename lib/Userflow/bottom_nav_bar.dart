import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:studio_live/Controller/home_controller.dart';
import 'package:studio_live/Screens/home_screen.dart';
import 'package:studio_live/Screens/profile_screen.dart';
import 'package:studio_live/Screens/search_screen.dart';
import 'package:studio_live/Screens/upcoming_screen.dart';
import 'package:get/get.dart';

import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';
class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final List<Widget> screens =[
    HomeScreen(),
    UpComingScreen(),
    SearchScreen(),
    ProfileScreen()
  ];
  final homeController =  Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() {
        return Center(
          child: screens[homeController.currentTab.value],
        );
      }),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 68,
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        minWidth: AddSize.size20,
                        onPressed: () {
                          homeController.currentTab.value = 0;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AddSize.size22,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/home2.png',
                                color: homeController.currentTab.value == 0
                                    ? AppTheme.primaryColor
                                    : Colors.grey,
                              ),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: homeController.currentTab.value == 0
                                      ? AppTheme.primaryColor
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: AddSize.size20,
                        onPressed: () {
                          homeController.currentTab.value = 1;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AddSize.size22,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/clipboardtext.png',
                                color: homeController.currentTab.value == 1
                                    ? AppTheme.primaryColor
                                    : Colors.grey,
                              ),
                            ),
                            Text(
                              'Upcoming',
                              style: TextStyle(
                                  color: homeController.currentTab.value == 1
                                      ? AppTheme.primaryColor
                                      : Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: AddSize.size20,
                        onPressed: () {
                          homeController.currentTab.value = 2;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AddSize.size22,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/searchnormal.png',
                                color: homeController.currentTab.value == 2
                                    ? AppTheme.primaryColor
                                    : Colors.grey,
                              ),
                            ),
                            // Icon(
                            //   Icons.add,
                            //   color: homeController.currentTab.value == 3 ? Colors.blue : Colors.grey,
                            // ),
                            Text(
                              'Search',
                              style: TextStyle(
                                  color: homeController.currentTab.value == 2
                                      ? AppTheme.primaryColor
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: AddSize.size40,
                        onPressed: () {
                          homeController.currentTab.value = 3;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AddSize.size22,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                'assets/images/user.png',
                                color: homeController.currentTab.value == 3
                                    ? AppTheme.primaryColor
                                    : Colors.grey,
                              ),
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: homeController.currentTab.value == 3
                                      ? AppTheme.primaryColor
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //right
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     MaterialButton(
                //       minWidth: AddSize.size20,
                //       onPressed: () {
                //         homeController.currentTab.value = 2;
                //       },
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           SizedBox(
                //             height: AddSize.size22,
                //             child: Image.asset(
                //               fit: BoxFit.contain,
                //               'assets/images/searchnormal.png',
                //               color: homeController.currentTab.value == 2
                //                   ? AppTheme.primaryColor
                //                   : Colors.grey,
                //             ),
                //           ),
                //           // Icon(
                //           //   Icons.add,
                //           //   color: homeController.currentTab.value == 3 ? Colors.blue : Colors.grey,
                //           // ),
                //           Text(
                //             'Search',
                //             style: TextStyle(
                //                 color: homeController.currentTab.value == 2
                //                     ? AppTheme.primaryColor
                //                     : Colors.grey),
                //           )
                //         ],
                //       ),
                //     ),
                //     MaterialButton(
                //       minWidth: AddSize.size40,
                //       onPressed: () {
                //         homeController.currentTab.value = 3;
                //       },
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           SizedBox(
                //             height: AddSize.size22,
                //             child: Image.asset(
                //               fit: BoxFit.contain,
                //               'assets/images/user.png',
                //               color: homeController.currentTab.value == 3
                //                   ? AppTheme.primaryColor
                //                   : Colors.grey,
                //             ),
                //           ),
                //           Text(
                //             'Profile',
                //             style: TextStyle(
                //                 color: homeController.currentTab.value == 3
                //                     ? AppTheme.primaryColor
                //                     : Colors.grey),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // )
              ],
            );
          }),
        ),
      ),
    );
  }
}
