import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
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
  TextEditingController  dobController = TextEditingController();
  String dateInput11 = "";
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              AddText(
                text: "Card Name",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                hint: 'Andrew Ainsley',
               // obscureText: false,
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
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                hint: '2672 7364 4738 8435',
               // obSecure: false.obs,
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
              SizedBox(height: AddSize.size10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CommonTextFieldWidget(
                      suffix: InkWell(
                        onTap: () async {
                          DateTime? _selectedDate =
                          await showDatePicker(
                              context: context,
                              initialDate: DateTime.now().subtract(Duration(days: 1)),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime.now().subtract(Duration(days: 1)));

                          if (_selectedDate != null) {
                            print(_selectedDate);
                            dateInput11 =
                                _selectedDate.toString();
                            print(dateInput11);
                            String formattedDate =
                            DateFormat('dd/MM/yyyy')
                                .format(_selectedDate)
                                .toString();

                            print(formattedDate);
                            setState(() {
                              dobController.text =
                                  formattedDate; //set output date to TextField value.
                              dobController.text =
                                  formattedDate;
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                        child: Icon(
                          Icons.calendar_today_outlined,
                          size: AddSize.size18,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                      //controller: dobController,
                      readOnly: true,
                      hint: 'Select',
                      // prefix: Icon(Icons.access_time_rounded),
                      // keyboardType: TextInputType.,
                      textInputAction: TextInputAction.next,
                      bgColor:
                      AppTheme.textfield.withOpacity(0.5),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: 'Please select Date'),
                      ]),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: CommonTextFieldWidget(
                      hint: '699',
                     // obSecure: false.obs,
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
              SizedBox(height: 300,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.checkoutScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
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
      ),
    );
  }
}
