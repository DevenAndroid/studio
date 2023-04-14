import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:studio_live/Router/my_router.dart';
import 'package:studio_live/widgets/custom_textfiled.dart';

import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class Studio_registrationScreen extends StatefulWidget {
  const Studio_registrationScreen({Key? key}) : super(key: key);

  @override
  State<Studio_registrationScreen> createState() => _Studio_registrationScreenState();
}

class _Studio_registrationScreenState extends State<Studio_registrationScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController zipcode = TextEditingController();
  // String dropdownvalue = 'Male';
  RxString genderType = "".obs;

  bool value = false;
  final Formkey2 = GlobalKey<FormState>();
  final ImagePicker imgpicker2 = ImagePicker();
  List<XFile>? imagefiles2;
  final ImagePicker imgpicker3 = ImagePicker();
  List<XFile>? imagefiles3;

  File? _video;
  final picker = ImagePicker();

  _pickVideo() async{
    final video = await picker.getVideo(source: ImageSource.gallery) ;
    _video = File(video!.path);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        title: const Text("Business Registration",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: Formkey2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AddSize.size20,),
                AddText(
                  text: "Business name",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CommonTextFieldWidget(
                  //obSecure: false.obs,
                  hint: 'Popup dance class',
                  controller: name,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter name '),
                  ]),
                ),
                const SizedBox(height: 16),
                AddText(
                  text: "Email",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CommonTextFieldWidget(
                    //obSecure: false.obs,
                    controller: email,
                    hint: 'info@gmail.com',
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter name '),
                  ]),
                ),
                const SizedBox(height: 16),
                AddText(
                  text: "Phone",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CommonTextFieldWidget(
                    //obSecure: false.obs,
                    controller: phone,
                    hint: '987-654-3210',
                  keyboardType: TextInputType.number,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter name '),
                  ]),
                ),
                const SizedBox(height: 16),
                AddText(
                  text: "Address",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CommonTextFieldWidget(
                 // obSecure: false.obs,
                  controller: address,
                  hint: 'Riverside Building, County Hall',
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter name '),
                  ]),
                  suffix:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height : 28,
                        width: 28,
                        child: const CircleAvatar(
                            backgroundColor: Color(0xFFD7EDFF),
                            child: Icon(Icons.location_on_outlined,color:  Color(0xFF39439D),size: 18,)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AddSize.size16,),
                AddText(
                  text: "City",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AddSize.size10,
                ),
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
                      return "Please select city type";
                    } else {
                      return null;
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: "Jaipur",
                      child: Text('Jaipur'),
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
                SizedBox(
                  height: AddSize.size20,
                ),
                AddText(
                  text: "State",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AddSize.size10,
                ),
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
                      return "Please select state type";
                    } else {
                      return null;
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: "Rajasthan",
                      child: Text('Rajasthan'),
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
                SizedBox(
                  height: AddSize.size20,
                ),
                AddText(
                  text: "Zip Code",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CommonTextFieldWidget(
                 // obSecure: false.obs,
                  hint: '302004',
                  controller: zipcode,
                  keyboardType: TextInputType.number,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter zipcode '),
                  ]),
                ),
                SizedBox(
                  height: AddSize.size20,
                ),
                AddText(
                  text: "Logo",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size16,),
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

                      ],
                    ),
                  ),
                ),
                SizedBox(height: AddSize.size8,),
                AddText(text: 'Upload Logo must be PNG or JPEG, up to 1 MB each,  and 512 px and 512 px',color: Colors.grey,fontSize: 12,height: 1.3,),
                SizedBox(height: AddSize.size16,),
                AddText(
                  text: "Studio image",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size16,),
                InkWell(
                  onTap: (){
                    openImgFromGallery();
                  },
                  child: Container(
                    height: 170,
                    width: AddSize.screenWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.boardercolor),
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                    ),
                    child: imagefiles3 != null?Wrap(
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
                        const Text('Upload Up to 10 images',style: TextStyle(
                          color: Color(0xFF5E6282),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: AddSize.size8,),
                AddText(text: 'Upload Logo must be PNG or JPEG, up to 1 MB each,  and 512 px and 512 px',color: Colors.grey,fontSize: 12,height: 1.3,),
                SizedBox(height: AddSize.size16),
                AddText(
                  text: "Upload Video",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size16),
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
                        const Text('Upload Up to 5 Videos',style: TextStyle(
                          color: Color(0xFF5E6282),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: AddSize.size8,),
                AddText(text: 'Upload Video. must be 10 MB each,  and 512 px and 512 px',color: Colors.grey,fontSize: 12,),
                SizedBox(height: AddSize.size20,),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Row(
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
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: AddText(text: 'I agree to the',fontSize: 14,fontWeight: FontWeight.w500,),
                          ),
                          const SizedBox(width: 5,),
                          InkWell(onTap: (){
                            Get.toNamed(MyRouter.cancellationPolicyScreen);
                          },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: AddText(text: 'Cancellation Policy',fontSize: 14,fontWeight: FontWeight.w500,color: AppTheme.primaryColor,),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AddSize.size20,),
                ElevatedButton(onPressed: ()
                {
                  if(Formkey2.currentState!.validate()){
                    Get.toNamed(MyRouter.studioLoginScreen);
                  }
                  else{
                    if(name.text.trim().isEmpty){
                      scrollController.animateTo(10, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    }
                    else if(email.text.trim().isEmpty){
                      scrollController.animateTo(0, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    }
                    else if(phone.text.trim().isEmpty){
                      scrollController.animateTo(400, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    }
                    else if(address.text.trim().isEmpty){
                      scrollController.animateTo(600, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    }
                    // else if(city.text.trim().isEmpty){
                    //   scrollController.animateTo(0, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    // }
                    // else if(state.text.trim().isEmpty){
                    //   scrollController.animateTo(0, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    // }
                    else if(zipcode.text.trim().isEmpty){
                      scrollController.animateTo(700, duration: Duration(milliseconds: 800), curve: Curves.bounceInOut);
                    }
                  }



                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: AppTheme.buttonColor,
                        ),
                      ),
                      minimumSize: const Size(340, 56),
                    ),
                    child: const Center(child: AddText(text: 'REGISTER ACCOUNT',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                ),
                SizedBox(height: AddSize.size40,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
