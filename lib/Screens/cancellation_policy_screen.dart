import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studio_live/widgets/add_text.dart';

import '../widgets/app_theme.dart';

class CancellationPolicyScreen extends StatefulWidget {
  const CancellationPolicyScreen({Key? key}) : super(key: key);

  @override
  State<CancellationPolicyScreen> createState() => _CancellationPolicyScreenState();
}

class _CancellationPolicyScreenState extends State<CancellationPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title:  Text("Cancellation Policy",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddText(text: 'There are many variations of passages of Lorem Ipsum available,'
          ' but the majority have suffered alteration in some form, by injected humour,'
          ' or randomised words which don\'t look even slightly believable.'
          ' If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t'
          ' anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on'
            ' the Internet tend to repeat predefined chunks as necessary, making this the first true'
            ' generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence'
            ' structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always'
            ' free from repetition, injected humour, or non-characteristic words etc .Lorem Ipsum which looks reasonable.'
          'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Color(0xFF667182),
                height: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
