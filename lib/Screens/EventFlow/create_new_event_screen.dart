import 'dart:io';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../Router/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/custom_textfiled.dart';
import '../../widgets/dimentions.dart';

class CreateNewEventScreen extends StatefulWidget {
  const CreateNewEventScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewEventScreen> createState() => _CreateNewEventScreenState();
}

class _CreateNewEventScreenState extends State<CreateNewEventScreen> {
  final TextEditingController dobController = TextEditingController();
  final TextEditingController address = TextEditingController();

  RxString genderType = "".obs;
  RxString highLightType = "".obs;
  String dateInput11 = "";
  String dateInput12 = "";
  bool value = false;
  final ImagePicker imgpicker3 = ImagePicker();
  List<XFile>? imagefiles3;
  final ImagePicker imgpicker2 = ImagePicker();
  List<XFile>? imagefiles2;
  openImgFromGallery() async {
    try {
      var pickedfiles = await imgpicker3.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if(pickedfiles != null){
        imagefiles3 = pickedfiles;
        setState(() {
        });
      }else{
        print("No image is selected.");
      }
    }catch (e) {
      print("error while picking file.");
    }
  }
  openLogoFromGallery() async {
    try {
      var pickedfiles = await imgpicker2.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if(pickedfiles != null){
        imagefiles2 = pickedfiles;
        setState(() {
        });
      }else{
        print("No image is selected.");
      }
    }catch (e) {
      print("error while picking file.");
    }
  }


  File? _video;
  final picker = ImagePicker();

  _pickVideo() async{
    final video = await picker.getVideo(source: ImageSource.gallery) ;
    _video = File(video!.path);
  }

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
        title: Text("Create New Event",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  AddText(
                    text: "Event Name",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
              Row(
                children: [
                  AddText(
                    text: "Event Type",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
                    return "Please select event type";
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
                children: [
                  AddText(
                    text: "Select Date and Time",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              CommonTextFieldWidget(
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
                hint: '23-3-2023 - 08:30pm',
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
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  AddText(
                    text: "Event Price",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
              Row(
                children: [
                  AddText(
                    text: "Address",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              SizedBox(height: AddSize.size10,),
              CustomTextField(
                obSecure: false.obs,
                controller: address,
                hintText: 'Riverside Building, County Hall'.obs,
                suffixIcon:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height : 28,
                      width: 28,
                      child: const CircleAvatar(
                          backgroundColor: Color(0xFFD7EDFF),
                          child: Icon(Icons.location_on_outlined,color: Color(0xFF39439D),size: 18,)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  AddText(
                    text: "HighLights",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
                    return "Please select event type";
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
                children: [
                  AddText(
                    text: "Amenities",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
                children: [
                  AddText(
                    text: "Healthy & Safety measures",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
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
                children: [
                  AddText(
                    text: "Event Description",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
              ),


              SizedBox(height: AddSize.size10,),
              Container(
                height: 120,
                width: AddSize.screenWidth,
                decoration: BoxDecoration(
                  color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                  border: Border.all(color: AppTheme.boardercolor),
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
              Row(
                children: [
                  AddText(
                    text: "images",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              SizedBox(height: AddSize.size10,),
              InkWell(
                onTap: (){
                  openLogoFromGallery();
                },
                child: Container(
                  height: 170,
                  width: AddSize.screenWidth,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.boardercolor),
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                  ),
                  child: imagefiles2 != null?Wrap(
                    children: imagefiles2!.map((imageone){
                      return Container(
                          child:Card(
                            child: Container(
                              height: 160, width: MediaQuery.of(context).size.width,
                              child: Image.file(File(imageone.path),fit: BoxFit.cover,alignment: Alignment.topCenter),
                            ),
                          )
                      );
                    }).toList(),
                  ):  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/export.png',width: 24,height: 24,),
                      const Text('Upload images',style: TextStyle(
                        color: Color(0xFF5E6282),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text('Upload max 5 images',style: TextStyle(
                        color: Color(0xFF39439D),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)

                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  AddText(
                    text: "Upload Videos",
                    fontSize: AddSize.size16,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w300,
                  ),
                  const AddText(
                    text: "*",
                    color: AppTheme.requiredColor,
                    //fontWeight: FontWeight.w300,
                  ),
                ],
              ),
              SizedBox(height: AddSize.size10,),
              InkWell(
                onTap: (){
                  _pickVideo();
                },
                child: Container(
                  height: 170,
                  width: AddSize.screenWidth,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.boardercolor),
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                  ),
                  child: _video != null?Wrap(
                    children: imagefiles3!.map((imageone){
                      return Container(
                          child:Card(
                            child: Container(
                              height: 160, width: MediaQuery.of(context).size.width,
                              child: Image.file(File(imageone.path),fit: BoxFit.cover,alignment: Alignment.topCenter),
                            ),
                          )
                      );
                    }).toList(),
                  ):  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/export.png',width: 24,height: 24,),
                      const Text('Upload Videos',style: TextStyle(
                        color: Color(0xFF5E6282),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text('Upload max 5 videos',style: TextStyle(
                        color: Color(0xFF39439D),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)

                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size20,),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      activeColor: AppTheme.primaryColor,
                      value: this.value,
                      onChanged: ( value) {
                        if(this.value == false){
                          setState(() {
                            this.value = true;
                          });
                        }
                        else if(this.value == true)  {
                          setState(() {
                            this.value = false;
                          });
                        }

                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: AddText(text: 'I agree to the',fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey,),
                      ),
                      SizedBox(width: 5,),
                      InkWell(onTap: (){
                        Get.toNamed(MyRouter.cancellationPolicyScreen);
                      },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: AddText(text: 'Cancellation Policy',fontSize: 14,fontWeight: FontWeight.w500,color: AppTheme.primaryColor,),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AddSize.size20,),
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
