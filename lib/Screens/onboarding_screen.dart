import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../widgets/dimentions.dart';
import '../Controller/onbording_controller.dart';
import '../Router/my_router.dart';
import '../widgets/app_theme.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    log("message");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: AddSize.screenHeight * 0.6,
                child: Stack(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: AddSize.size30 * 2),
                      height: AddSize.screenHeight * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: PageView.builder(
                          physics: const BouncingScrollPhysics(),
                          controller: controller.pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.contents.length,
                          onPageChanged: (int index) {
                            controller.currentIndex.value = index;
                          },
                          itemBuilder: (_, i) {
                            return ClipRRect(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                              child: Image.asset(
                                controller
                                    .contents[controller.currentIndex.value]
                                    .image
                                    .toString(),
                                width: AddSize.screenWidth * 0.8,
                                // height: AddSize.screenHeight,
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    ),
                    Positioned(
                        top: AddSize.size50 * 1.2,
                        left: AddSize.screenWidth * .85,
                        child: controller.currentIndex.value != 2
                            ? InkWell(
                          onTap: () {
                            Get.toNamed(MyRouter.loginScreen);
                          },
                          child: const Text("Skip",
                              style: TextStyle(
                                  color: Colors.transparent,
                                  decorationColor: Color(0XffFF8E30),
                                  shadows: [
                                    Shadow(
                                        color: Color(0XffFF8E30),
                                        offset: Offset(0, -10))
                                  ],
                                  // decoration: TextDecoration.underline,
                                  // decorationThickness: 3
                                 )),
                        )
                            : const SizedBox())
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: AddSize.screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AddSize.padding20,
                      vertical: AddSize.padding10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: AddSize.size10),
                          FittedBox(
                            child: Text(
                              controller
                                  .contents[controller.currentIndex.value].title
                                  .toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: AddSize.font10 * 3,
                                fontWeight: FontWeight.bold,
                                // height: 0.44,
                                color: AppTheme.headingColor,
                              ),
                            ),
                          ),
                          SizedBox(height: AddSize.size10),
                          Text(
                            controller.contents[controller.currentIndex.value]
                                .discription
                                .toString(),
                            style: TextStyle(
                              height: 1.60,
                              fontWeight: FontWeight.w300,
                              fontSize: AddSize.font16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: AddSize.size10),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///dots
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  controller.contents.length,
                                      (index) => buildDot(index, context),
                                ),
                              ),

                              ///btn
                              InkWell(
                                onTap: () {
                                  if (controller.containerWidth.value <
                                      AddSize.size80) {
                                    controller.pageController.nextPage(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.ease);
                                  } else if (controller.currentIndex1.value ==
                                      true) {
                                    Get.toNamed(MyRouter.splashScreen2);
                                  }
                                },
                                child: Container(
                                    height: AddSize.size30 * 2,
                                    width: AddSize.size30 * 2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppTheme.primaryColor,
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: AddSize.size20,
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(height: AddSize.size20),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: AddSize.size10 * .8,
      width: controller.currentIndex.value == index
          ? AddSize.size15
          : AddSize.size10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(5),
        color: controller.currentIndex.value == index
            ? AppTheme.primaryColor
            : Colors.grey.shade300,
      ),
    );
  }
}
