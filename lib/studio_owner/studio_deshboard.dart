import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Router/my_router.dart';
import '../widgets/dimentions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Studio_dashboradScreen extends StatefulWidget {
  const Studio_dashboradScreen({Key? key}) : super(key: key);

  @override
  State<Studio_dashboradScreen> createState() => _Studio_dashboradScreenState();
}

class _Studio_dashboradScreenState extends State<Studio_dashboradScreen> {
  final drawerKey = GlobalKey<ScaffoldState>();
  int currentDrawer = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final drawerKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: drawerKey,
      drawer: Container(
        color: Colors.white,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 150,
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                      color: const Color(0xFFFF8E30)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(100)),
                                color: AppTheme.primaryColor,
                              ),
                              child: ClipOval(
                                child : Image.asset('assets/images/drawer_img.png',height: 66,width: 66 ,),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),

                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: const [

                                Text(
                                  'Rizwan Q',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                                Text(
                                  'qrizwan@gmail.com',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: const Color(0xFFFCFBFA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Theme(
                  data:  Theme.of(context).copyWith(
                      accentColor: const Color(0xFF4F535E),
                      dividerColor: Colors.transparent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                    child: ExpansionTile(
                      leading: Image.asset('assets/images/grid-2.png',width: 22 ,height: 22,),
                      backgroundColor: const Color(0xFFFCFBFA),
                      iconColor: const Color(0xFF4F535E),
                      collapsedIconColor: const Color(0xFF4F535E),
                      childrenPadding: const EdgeInsets.only(left:60),
                      title: const Text(
                        'My Studio ',
                        style: TextStyle(
                          color: Color(0xFF4F535E),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      children:  <Widget>[
                        ListTile(
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                          subtitle: const Text('Dashboard',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.studioDashboardScreen);
                          },
                        ),
                        ListTile(
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('My Employees',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.myEmployeeScreen);
                          },
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('classes',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.studioOwnerClassScreen);
                          },
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('Booking',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.myBookingStudioScreen);
                          },
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('Withdrawal Money',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.studioWithdrawalScreen);
                          },
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('Reviews',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.reviewScreen);
                          },
                        ),
                        ListTile(
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          subtitle: const Text('Settings',
                            style: TextStyle( color: Color(0xFF4F535E),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,),),
                          dense: true,
                          onTap: (){
                            Get.toNamed(MyRouter.settingScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 0
                          ? const Icon(
                        Icons.mail_outline,
                        color: Color(0xFF4F535E),
                      )
                          :const Icon(
                        Icons.mail_outline,
                        color: Color(0xFF4F535E),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'Messages',
                        style: currentDrawer == 0
                            ? const TextStyle(
                            color: Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.notificationScreen);
                    // setState(() {
                    //   currentDrawer = 0;
                    // });
                  },
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 1
                          ? const Icon(
                        Icons.favorite_outline,
                        color: const Color(0xFF4F535E),

                      )
                          : const Icon(
                        Icons.favorite_outline,
                        color: const Color(0xFF4F535E),
                      ),

                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'My Wishlist',
                        style: currentDrawer == 1
                            ? const TextStyle(
                            color: Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.savedPlacesScreen);
                    // setState(() {
                    //   currentDrawer = 1;
                    //   Get.toNamed(MyRouter.savedPlacesScreen);
                    // });
                  },
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: const Color(0xFFFCFBFA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Theme(
                  data:  Theme.of(context).copyWith(
                      accentColor: const Color(0xFF4F535E),
                      dividerColor: Colors.transparent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                    child: ExpansionTile(
                      leading: Image.asset('assets/images/ranking.png',width: 25 ,height: 25,),
                      backgroundColor: const Color(0xFFFCFBFA),
                      iconColor: const Color(0xFF4F535E),
                      collapsedIconColor: const Color(0xFF4F535E),
                      childrenPadding: const EdgeInsets.only(left:20),
                      title: const Text(
                        'Refer',
                        style: TextStyle(
                          color: Color(0xFF4F535E),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      children:  <Widget>[
                        ListTile(
                          iconColor:const Color(0xFF4F535E),
                          // isThreeLine: true,
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('YAF5KJHGCX45YTUY',
                                style: TextStyle( color: Color(0xFF1E282D),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,),),
                              IconButton(onPressed: (){}, icon: Image.asset('assets/images/copied_icon.png',width: 23,height: 23,))
                            ],
                          ),
                          dense: true,

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 4
                          ? Image.asset(
                        'assets/images/headest_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      )
                          : Image.asset(
                        'assets/images/headest_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'Support',
                        style: currentDrawer == 4
                            ? const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.supportScreen);
                    // setState(() {
                    //   currentDrawer = 4;
                    //   // bottomController.updateIndexValue(2);
                    // });
                  },
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 4
                          ? Image.asset(
                        'assets/images/policy_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      )
                          : Image.asset(
                        'assets/images/policy_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'Privacy Policy',
                        style: currentDrawer == 4
                            ? const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.privacyPolicyScreen);
                    // setState(() {
                    //   currentDrawer = 4;
                    //   // bottomController.updateIndexValue(2);
                    // });
                  },
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 4
                          ? Image.asset(
                        'assets/images/qus_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      )
                          : Image.asset(
                        'assets/images/qus_icon.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'FAQ',
                        style: currentDrawer == 4
                            ? const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.faqScreen);
                    // setState(() {
                    //   currentDrawer = 4;
                    //   // bottomController.updateIndexValue(2);
                    // });
                  },
                ),
              ),
              const Divider(thickness: 1,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,bottom: 0),
                child: ListTile(
                  title: Row(
                    children: [
                      currentDrawer == 4
                          ? Image.asset(
                        'assets/images/logout.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      )
                          : Image.asset(
                        'assets/images/logout.png',
                        width: 22,
                        color: const Color(0xFF4F535E),
                      ),
                      const SizedBox(
                        width: 31,
                      ),
                      Text(
                        'Logout',
                        style: currentDrawer == 4
                            ? const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16)
                            : const TextStyle(
                            color: const Color(0xFF4F535E),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(MyRouter.loginScreen);
                    // setState(() {
                    //   currentDrawer = 4;
                    //   // bottomController.updateIndexValue(2);
                    // });
                  },
                ),
              ),
              const SizedBox(
                height:20,
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        toolbarHeight: 70,
        elevation: 1.8,
        shadowColor: const Color(0xFF549ADD),
        titleSpacing: 0,
        leading:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                print('click drawer');
                drawerKey.currentState!.openDrawer();
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xFFFF8E30)
                ),
                child: SvgPicture.asset('assets/images/9057028_menu_left_icon (2) 1.svg',fit: BoxFit.none,),
              ),
            ),
          ],
        ),
        title: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              text: "Welcome",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1B233A)),
              children: <TextSpan>[
                TextSpan(
                  text: '\nJoan Sinha',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1B233A)
                  ),
                ),
              ]),
        ),
        actions: <Widget>[
          InkWell(
            onTap: (){
              _dialogBuilder(context);
            },
            child: Container(
              height: 34,
              width: 34,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF1B233A),
              ),
              child: SvgPicture.asset('assets/images/setting-4.svg',fit: BoxFit.none,),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: (){
              Get.toNamed(MyRouter.notificationScreen);
            },
            child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFF7D9FB8))),
                child: Center(child:SvgPicture.asset('assets/images/Group 180.svg',fit: BoxFit.none,),
                )
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(AddSize.size13),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        height: 140,
                        width: 165,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: (blurBoxShadow)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/calendar1.png',height: 38,width: 38,),
                           const Text('159',style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000)
                            ),),
                            const Text('My Total Booking',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF616F80)
                            ),),
                          ],
                        ),
                      ),
                    Container(
                        height: 140,
                        width: 165,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: (blurBoxShadow)
                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/dollar_money.png',width: 54,height: 54,),
                          const Text('\$3510',style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000)
                          ),),
                          const Text('My Total Sale',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF616F80)
                          ),),
                        ],
                      ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 201,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: (blurBoxShadow)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const[
                             Text('Sales This Month',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF454B5C)
                            ),),
                            Spacer(),
                            Icon(Icons.circle,color: Color(0xFFFFA629),size: 10,),
                            SizedBox(width: 5,),
                            Text('Earning',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8C9BB2)
                            ),),
                            Spacer(),
                            Icon(Icons.circle,color: Color(0xFF18B884),size: 10,),
                            SizedBox(width: 5,),
                            Text('Gross Sales',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8C9BB2)
                            ),),
                          ],
                        ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: const[
                                 Text(''),
                               ],
                             ),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar_1.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar_2.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,),
                             Image.asset('assets/images/graph_bar.png',height: 130,width: 11,)
                           ],
                         ),
                      ],
                    ),
                  ),
                ),
              ),
              addHeight(13),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AddText(
                      text: 'Upcoming Classes',
                      fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF1B233A),
                      //fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                      onTap: () {
                        //homeController.currentTab.value = 0;
                        //Get.toNamed(MyRouter.courseScreen);
                      },
                      child: AddText(
                        text: 'View All',
                        fontSize: AddSize.font16,
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi1(index);
                        }),
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AddText(
                      text: 'Previous Classes',
                      fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF1B233A),
                      //fontWeight: FontWeight.bold,
                    ),
                    InkWell(
                      onTap: () {
                        //homeController.currentTab.value = 0;
                        //Get.toNamed(MyRouter.courseScreen);
                      },
                      child: AddText(
                        text: 'View All',
                        fontSize: AddSize.font16,
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi2(index);
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddText(
                      text: 'Team Members',
                      fontSize: AddSize.font18,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                    ),
                    InkWell(
                      onTap: () {
                        //homeController.currentTab.value = 0;
                        //Get.toNamed(MyRouter.courseScreen);
                      },
                      child: AddText(
                        text: 'View All',
                        fontSize: AddSize.font16,
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return coursesUi3(index);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Column coursesUi(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioListScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: (blurBoxShadow),
                  // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      child:
                      Image.asset(
                        'assets/images/Rectangle18.png',
                        width: AddSize.size100,
                        height: AddSize.size100,
                        fit: BoxFit.cover,
                      ),
                      // CachedNetworkImage(
                      //   width: AddSize.size110,
                      //   height: AddSize.size125 * 250,
                      //   fit: BoxFit.cover,
                      //   imageUrl: homeController.model.value.data!.popularCourses![index].image.toString(),
                      //   placeholder: (context, url) => SizedBox(),
                      //   errorWidget: (context, url, error) => SizedBox(),
                      // ),
                      //   Image.network(homeController.model.value.data!.popularCourses![index].image.toString(),
                      //     width: AddSize.size110,
                      //     height: AddSize.size125 * 250,
                      //     fit: BoxFit.cover,
                      //   ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AddText(
                                    text: 'Pool Event',
                                    textAlign: TextAlign.start,
                                    // color: AppTheme.filtter.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: AddSize.font14,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: AddSize.size20,
                                      ),
                                      SizedBox(
                                          width: AddSize.size5),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: AddSize.size5),
                                        child: AddText(
                                          text:'4.9',
                                          color: Colors.amber,
                                          fontWeight:
                                          FontWeight.w600,
                                          fontSize:AddSize.font14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: const [
                                Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,),
                                const SizedBox(width: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: AppTheme.userText.withOpacity(.4),
                                    //fontWeight: FontWeight.w600,
                                    fontSize: AddSize.size13,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            Row(
                              children: const [
                                AddText(text: "30.00",color: AppTheme.primaryColor,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),

        SizedBox(
          height: AddSize.size10,
        ),
      ],
    );
  }
  Column coursesUi1(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioOwnerClassScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: blurBoxShadow,
                  borderRadius: BorderRadius.circular(
                      AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .18,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      child:
                      Image.asset(
                        'assets/images/studio_desh.png',
                        height: 90,
                        width: AddSize.size100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Photo Classes',
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
                                      color: const Color(0xFF1B233A),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size20,
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: AddSize.size5),
                                    child: const AddText(
                                      text:'4.9',
                                      color: Colors.amber,
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text('Jaz Dance Class',style: TextStyle(
                                color: Color(0xFF004B93),
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),),
                            const SizedBox(height: 6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                     Padding(
                                      padding:  EdgeInsets.only(bottom: 5),
                                      child: Icon(Icons.person_outlined,size: 20,color: Color(0xFF7D8396)),
                                    ),
                                    const SizedBox(width: 2,),
                                    AddText(
                                      text: '6 to 10 Ages',
                                      textAlign: TextAlign.start,
                                      color: const Color(0xFF7D8396),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ],
                                ),

                              ],
                            ),

                            SizedBox(height: AddSize.size8,),
                            Row(
                              children: const [
                                AddText(text: "\$30.00",color: AppTheme.primaryColor,fontSize: 15,fontWeight: FontWeight.w500,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),

        SizedBox(
          height: AddSize.size10,
        ),
      ],
    );
  }
  Column coursesUi2(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioOwnerClassScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: blurBoxShadow,
                  borderRadius: BorderRadius.circular(
                      AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .21,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      child:
                      Image.asset(
                        'assets/images/events_home.png',
                        width: AddSize.size100,
                        height: 115,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddText(
                                      text: 'Pool Event',
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
                                      color: const Color(0xFF1B233A),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size20,
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: AddSize.size5),
                                    child: const AddText(
                                      text:'4.9',
                                      color: Colors.amber,
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text('Pool Window Event',style: TextStyle(
                                color: Color(0xFF004B93),
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),),
                            const SizedBox(height: 6,),
                            Row(
                              children: const [
                                Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                                const SizedBox(width: 5,),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                                addWidth(AddSize.size14),
                                Image.asset('assets/images/seat_icon.png',height: 16,width: 16,color: Colors.grey,),
                                addWidth(AddSize.size5),
                                Text('105 available seats',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color:  AppTheme.userText.withOpacity(.4),
                                  fontSize: 13,
                                ),),
                              ],
                            ),
                            SizedBox(height: AddSize.size8,),
                            const AddText(text: " \$ 30.00",color: AppTheme.primaryColor,fontSize: 15,fontWeight: FontWeight.w500,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),

        SizedBox(
          height: AddSize.size10,
        ),
      ],
    );
  }
  Column coursesUi3(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(MyRouter.studioOwnerClassScreen);
            // Get.toNamed(MyRouter.paidCourse, arguments: [
            //   homeController.model.value.data!.popularCourses![index].id
            //       .toString()
            // ]);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: blurBoxShadow,
                  borderRadius: BorderRadius.circular(
                      AddSize.size15)),
              // width: AddSize.screenWidth,
              height: AddSize.screenHeight * .21,
              //margin: EdgeInsets.all(AddSize.size5),
              child: Padding(
                padding: EdgeInsets.all(AddSize.size10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      child:
                      Image.asset(
                        'assets/images/yoga_classes.png',
                        width: AddSize.size100,
                        height:115,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: AddSize.size15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: AddText(
                                      text: 'Yoga Class',
                                      textAlign: TextAlign.start,
                                      // color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: AddSize.size20,
                                  ),
                                  SizedBox(
                                      width: AddSize.size5),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: AddSize.size5),
                                    child: AddText(
                                      text:'4.9',
                                      color: Colors.amber,
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize:AddSize.font12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: const [
                                Icon(Icons.calendar_month,color: Colors.grey,size: 20),
                                SizedBox(width: 5,),
                                AddText(text: '25-01-22-',color: Colors.grey,fontSize: 13,),
                                AddText(text: '08:30 PM',color: Colors.grey,fontSize: 13),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size6,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,),
                                const SizedBox(width: 5,),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: AddText(
                                    text: '5 km',
                                    textAlign: TextAlign.start,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                                addWidth(AddSize.size14),
                                Image.asset('assets/images/seat_icon.png',height: 16,width: 16,color: Colors.grey,),
                                addWidth(AddSize.size5),
                                Text('105 available seats',style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color:  AppTheme.userText.withOpacity(.4),
                                  fontSize: 13,
                                ),),
                              ],
                            ),
                            SizedBox(height: AddSize.size6,),
                            SizedBox(height: AddSize.size8,),
                            const AddText(text: " \$ 30.00",color: AppTheme.primaryColor,fontSize: 15,fontWeight: FontWeight.w500,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),

        SizedBox(
          height: AddSize.size10,
        ),
      ],
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Get.back();

            },
            child: const Center(child: Text('Day')),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();

            },
            child: const Center(child: Text('Week')),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();

            },
            child: const Center(child: Text('Month')),
          ),
          const Divider(thickness: 1,),
          SimpleDialogOption(
            onPressed: () {
              Get.back();

            },
            child: const Center(child: Text('Year')),
          ),
        ],
      );
    },
  );
}

