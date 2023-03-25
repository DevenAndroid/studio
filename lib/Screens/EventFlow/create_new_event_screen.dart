import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class CreateNewEventScreen extends StatefulWidget {
  const CreateNewEventScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewEventScreen> createState() => _CreateNewEventScreenState();
}

class _CreateNewEventScreenState extends State<CreateNewEventScreen> {
  final TextEditingController dobController = TextEditingController();

  RxString genderType = "".obs;
  RxString highLightType = "".obs;
  String dateInput11 = "";
  String dateInput12 = "";

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
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text("Create New Event",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Event Name",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'Type Your Event Name',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter  name '),
                  // PatternValidator(r'^[0-9]',
                  //     errorText: 'Only digits are allow'),
                  // MinLengthValidator(10,
                  //     errorText:
                  //         'Phone number must be at list 10 digit'),
                  // MaxLengthValidator(10,
                  //     errorText:
                  //         'Phone number is not greater then 10 digit'),
                ]),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Event Type",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: "Select ",
                  focusColor: AppTheme.primaryColor,
                  hintStyle: TextStyle(
                      color: AppTheme.userText,
                      fontSize: AddSize.font14),
                  filled: true,
                  fillColor: AppTheme.appPrimaryPinkColor
                      .withOpacity(.02),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AddSize.size12),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppTheme.primaryColor),
                    borderRadius:
                    BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5)),
                      borderRadius:
                      const BorderRadius.all(
                          Radius.circular(10.0))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5),
                          width: 3.0),
                      borderRadius:
                      BorderRadius.circular(15.0)),
                ),
                value: genderType.value == ""
                    ? null
                    : genderType.value,
                validator: (value) {
                  if (genderType.value == "") {
                    return "Please select gender type";
                  } else {
                    return null;
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: "Studio",
                    child: Text('Studio'),
                  ),
                  DropdownMenuItem(
                    value: "Others",
                    child: Text('Others'),
                  ),
                  //DropdownMenuItem(value: "Others",child: Text('Others'),)
                ],
                onChanged: (String? v) {
                  genderType.value = v!;
                },
              ),
              SizedBox(height: AddSize.size20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: AddText(
                      text: "Start Date",
                      fontSize: AddSize.size16,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: AddText(
                      text: "End Date",
                      fontSize: AddSize.size16,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                      controller: dobController,
                      readOnly: true,
                      hint: 'Date of Birth',
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
                            dateInput12 =
                                _selectedDate.toString();
                            print(dateInput12);
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
                      controller: dobController,
                      readOnly: true,
                      hint: 'Date of Birth',
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
                ],
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Event Price",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: '30.00',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter  name '),
                  // PatternValidator(r'^[0-9]',
                  //     errorText: 'Only digits are allow'),
                  // MinLengthValidator(10,
                  //     errorText:
                  //         'Phone number must be at list 10 digit'),
                  // MaxLengthValidator(10,
                  //     errorText:
                  //         'Phone number is not greater then 10 digit'),
                ]),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Address",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              CommonTextFieldWidget(
                //controller: emailController,
                hint: 'Riverside Building, County Hall',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //maxLength: 10,
                bgColor: AppTheme.textfield.withOpacity(0.5),
                validator: MultiValidator([
                  RequiredValidator(
                      errorText:
                      'Please Enter  name '),
                  // PatternValidator(r'^[0-9]',
                  //     errorText: 'Only digits are allow'),
                  // MinLengthValidator(10,
                  //     errorText:
                  //         'Phone number must be at list 10 digit'),
                  // MaxLengthValidator(10,
                  //     errorText:
                  //         'Phone number is not greater then 10 digit'),
                ]),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "HighLights",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: "Select ",
                  focusColor: AppTheme.primaryColor,
                  hintStyle: TextStyle(
                      color: AppTheme.userText,
                      fontSize: AddSize.font14),
                  filled: true,
                  fillColor: AppTheme.appPrimaryPinkColor
                      .withOpacity(.02),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AddSize.size12),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppTheme.primaryColor),
                    borderRadius:
                    BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5)),
                      borderRadius:
                      const BorderRadius.all(
                          Radius.circular(10.0))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5),
                          width: 3.0),
                      borderRadius:
                      BorderRadius.circular(15.0)),
                ),
                value: genderType.value == ""
                    ? null
                    : genderType.value,
                validator: (value) {
                  if (genderType.value == "") {
                    return "Please select gender type";
                  } else {
                    return null;
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: "Studio",
                    child: Text('Studio'),
                  ),
                  DropdownMenuItem(
                    value: "Others",
                    child: Text('Others'),
                  ),
                  //DropdownMenuItem(value: "Others",child: Text('Others'),)
                ],
                onChanged: (String? v) {
                  genderType.value = v!;
                },
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Amenities",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: "Select ",
                  focusColor: AppTheme.primaryColor,
                  hintStyle: TextStyle(
                      color: AppTheme.userText,
                      fontSize: AddSize.font14),
                  filled: true,
                  fillColor: AppTheme.appPrimaryPinkColor
                      .withOpacity(.02),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AddSize.size12),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppTheme.primaryColor),
                    borderRadius:
                    BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5)),
                      borderRadius:
                      const BorderRadius.all(
                          Radius.circular(10.0))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5),
                          width: 3.0),
                      borderRadius:
                      BorderRadius.circular(15.0)),
                ),
                value: genderType.value == ""
                    ? null
                    : genderType.value,
                validator: (value) {
                  if (genderType.value == "") {
                    return "Please select gender type";
                  } else {
                    return null;
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: "Studio",
                    child: Text('Studio'),
                  ),
                  DropdownMenuItem(
                    value: "Others",
                    child: Text('Others'),
                  ),
                  //DropdownMenuItem(value: "Others",child: Text('Others'),)
                ],
                onChanged: (String? v) {
                  genderType.value = v!;
                },
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Healthy & Safety measures",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: "Select ",
                  focusColor: AppTheme.primaryColor,
                  hintStyle: TextStyle(
                      color: AppTheme.userText,
                      fontSize: AddSize.font14),
                  filled: true,
                  fillColor: AppTheme.appPrimaryPinkColor
                      .withOpacity(.02),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AddSize.size12),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppTheme.primaryColor),
                    borderRadius:
                    BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5)),
                      borderRadius:
                      const BorderRadius.all(
                          Radius.circular(10.0))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppTheme.boardercolor
                              .withOpacity(0.5),
                          width: 3.0),
                      borderRadius:
                      BorderRadius.circular(15.0)),
                ),
                value: genderType.value == ""
                    ? null
                    : genderType.value,
                validator: (value) {
                  if (genderType.value == "") {
                    return "Please select gender type";
                  } else {
                    return null;
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: "Studio",
                    child: Text('Studio'),
                  ),
                  DropdownMenuItem(
                    value: "Others",
                    child: Text('Others'),
                  ),
                  //DropdownMenuItem(value: "Others",child: Text('Others'),)
                ],
                onChanged: (String? v) {
                  genderType.value = v!;
                },
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Event Description",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),


              SizedBox(height: AddSize.size10,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(
                        text: "Type your event description",
                        fontSize: AddSize.size14,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "images",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset('assets/images/Group37.png')
                ),
              ),
              SizedBox(height: AddSize.size20,),
              AddText(
                text: "Upload Videos",
                fontSize: AddSize.size16,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(height: AddSize.size10,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset('assets/images/Group38.png')
                ),
              ),
              SizedBox(height: AddSize.size40,),
              ElevatedButton(onPressed: ()
              {
                // Get.toNamed(MyRouter.editProfileScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'PUBLISH NOW',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
