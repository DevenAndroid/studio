import 'package:flutter/material.dart';

//import '../resource/app_theme.dart';
import 'app_theme.dart';
import 'dimentions.dart';

class CommonButtonField extends StatelessWidget {
  String buttonText;
  VoidCallback function;
  Color? BgColor;
  double buttonWidth; // add this
  double buttonHeight; // add this
  CommonButtonField(
      this.buttonText, this.function, this.buttonWidth, this.buttonHeight,
      {super.key}); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppTheme.buttonColor),
      child: MaterialButton(
        minWidth: buttonWidth,
        color: BgColor,
        height: buttonHeight,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: function, // add this here
        child: Text(buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AddSize.font18)
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
