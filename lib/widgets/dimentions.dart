import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_text.dart';
import 'app_theme.dart';
//import '../resource/app_theme.dart';
// import 'add_text.dart';

class AddSize {
  static final screenHeight = Get.context!.height;
  static final screenWidth = Get.context!.width;

  ///height 804 ///width 393

  static double padding10 = screenHeight / 80.4;
  static double padding12 = screenHeight / 67;
  static double padding22 = padding12 + padding10;
  static double padding14 = screenHeight / 57.42857;
  static double padding16 = screenHeight / 50.25;
  static double padding18 = screenHeight / 44.6666;
  static double padding15 = screenHeight / 53.6;
  static double padding20 = screenHeight / 40.2;

  ///width

  static double width15 = screenWidth / 26.2;
  static double width100 = screenWidth / 3.93;

  /// For Sizes

  static double size14 = screenHeight / 57.42857;
  static double size13 = size12 + 1;
  static double size15 = screenHeight / 53.6;
  static double size10 = screenHeight / 80.4;
  static double size100 = screenHeight / 8.04;
  static double size5 = screenHeight / 160.8;
  static double size6 =  size5 + 1;
  static double size8 =  size5 + 3;
  static double size50 = screenHeight / 16.08;
  static double size60 = screenHeight / 16.08;
  static double size20 = screenHeight / 40.2;
  static double size40 = screenHeight / 20.1;
  static double size80 = size40 * 2;
  static double size90 = size45 * 2;
  static double size25 = screenHeight / 32.16;
  static double size28 = size25 + 3;
  static double size30 = screenHeight / 26.8;
  static double size250 = size50 * size5;
  static double size200 = screenHeight / 4.02;
  static double size45 = screenHeight / 17.866;
  static double size22 = screenHeight / 36.5454;
  static double size110 = screenHeight / 7.309090909;
  static double size125 = size110 + size15;
  static double size220 = screenHeight / 3.65454;
  static double size170 = size100 + 70;
  static double size190 = size100 + 90;
  static double size12 = screenHeight / 67;
  static double size300 = size10 * size30;
  static double size310 = size300 + size10;
  static double size330 = size300 + size20;
  static double size340 = size300 + size40;
  static double size70 = size80 - 10;
  static double size18 = screenHeight / 44.6666;
  static double size16 = screenHeight / 50.25;
  static double radius30 = screenHeight / 26.8;

  ///For fonts

  static double font14 = screenHeight / 57.42857;
  static double font10 = screenHeight / 80.4;
  static double font12 = screenHeight / 67;
  static double font15 = font12 + 3;
  static double font8 = screenHeight / 100.5;
  static double font18 = screenHeight / 44.6666;
  static double font20 = screenHeight / 40.2;
  static double font22 = screenHeight / 36.5454;
  static double font16 = screenHeight / 50.25;
  static double font24 = screenHeight / 33.5;
}

final List<BoxShadow> blurBoxShadow = [
  BoxShadow(
      offset: Offset(3, 3),
      color: Color(0xFF549ADD).withOpacity(.007),
      spreadRadius: 1,
      blurRadius: 1),
  BoxShadow(
    offset:  Offset(-3, -3),
    color: Color(0xFF549ADD).withOpacity(.007),
    spreadRadius: 1,
    blurRadius: 1,
// spreadRadius: 1
  ),
  BoxShadow(
      offset:  Offset(3, -3),
      color: Color(0xFF549ADD).withOpacity(.007),
      spreadRadius: 1,
      blurRadius: 1),
  BoxShadow(
    offset:  Offset(-3, 3),
    color: Color(0xFF549ADD).withOpacity(.007),
    spreadRadius: 1,
    blurRadius: 1,
// spreadRadius: 1
  ),
];

showFilterButtonSheet({
  required context,
  required titleText,
  required widgets,
  maxHeight = 0.0,
  minimumHeight = 0.0,
  automaticDismiss = true,
  showCloseIcon = true,
}) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      isDismissible: automaticDismiss,
      constraints: BoxConstraints(
          maxHeight: maxHeight == 0 ? AddSize.screenHeight * .8 : maxHeight,
          minHeight: minimumHeight),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        padding: EdgeInsets.only(
            top: AddSize.padding20,
            left: AddSize.padding20,
            right: AddSize.padding20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (showCloseIcon)
                  SizedBox(
                    width: AddSize.size20,
                  ),
                Expanded(
                  child: AddText(
                    textAlign: TextAlign.center,
                    text: titleText,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w600,
                    fontSize: AddSize.font22,
                  ),
                ),
                if (showCloseIcon)
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.clear,
                      size: AddSize.size25,
                      color: AppTheme.primaryColor,
                    ),
                  ),
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: widgets,
              ),
            )
          ],
        ),
      ));
}

SizedBox addHeight(double size) => SizedBox(height: size);

SizedBox addWidth(double size) => SizedBox(width: size);
