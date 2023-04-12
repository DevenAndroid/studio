import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/custom_textfiled.dart';
import '../widgets/dimentions.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController cardName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : const Icon(Icons.arrow_back)),
        title: const Text("Add New Card",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 250,),
            AddText(
              text: "Card Name",
              fontSize: AddSize.size18,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size20,),
            CustomTextField(
              hintText: 'Andrew Ainsley'.obs,
              obSecure: false.obs,
              controller: cardName,
              keyboardType: TextInputType.name,
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter card name '),
              ]),
            ),
            SizedBox(height: AddSize.size30,),
            AddText(
              text: "Card Number",
              fontSize: AddSize.size18,
              color: AppTheme.filtter,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: AddSize.size20,),
            CustomTextField(
              hintText: '2672 7364 4738 8435'.obs,
              obSecure: false.obs,
              controller: cardNumber,
              keyboardType: TextInputType.number,
              validator: MultiValidator([
                RequiredValidator(
                    errorText:
                    'Please Enter card name '),
              ]),
            ),
            SizedBox(height: AddSize.size30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AddText(
                    text: "Expiry Date",
                    fontSize: AddSize.size18,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: AddText(
                    text: "CVV",
                    fontSize: AddSize.size18,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: AddSize.size30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: '09/07/26'.obs,
                    obSecure: false.obs,
                    controller: cardNumber,
                    keyboardType: TextInputType.number,
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText:
                          'Please Enter card name '),
                    ]),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: CustomTextField(
                    hintText: '699'.obs,
                    obSecure: false.obs,
                    controller: cardNumber,
                    keyboardType: TextInputType.number,
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText:
                          'Please Enter card name '),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: ()
            {
              Get.toNamed(MyRouter.subscriptionPlanScreen2);
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA629),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide.none,
                  ),
                  minimumSize: const Size(340, 50),
                ),
                child: const Center(child: AddText(text: 'ADD',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
            ),
          ],
        ),
      ),
    );
  }
}
