import 'dart:io';

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

class BusinessRegistrationScreen extends StatefulWidget {
  const BusinessRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<BusinessRegistrationScreen> createState() => _BusinessRegistrationScreenState();
}

class _BusinessRegistrationScreenState extends State<BusinessRegistrationScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  String dropdownvalue = 'Male';
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
                CustomTextField(
                    obSecure: false.obs,
                    controller: name,
                    hintText: 'Popup dance class'.obs,
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
                CustomTextField(
                    obSecure: false.obs,
                    controller: email,
                    hintText: 'info@gmail.com'.obs),
                const SizedBox(height: 16),
                AddText(
                  text: "Phone",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CustomTextField(
                    obSecure: false.obs,
                    controller: phone,
                    hintText: '987-654-3210'.obs),
                const SizedBox(height: 16),
                AddText(
                  text: "Address",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
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
                    hintText: "Jaipur ",
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
                      value: "Jaipur",
                      child: Text('Jaipur'),
                    ),
                    DropdownMenuItem(
                      value: "Jaipur",
                      child: Text('Jaipur'),
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
                    hintText: "Rajasthan ",
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
                      value: "Rajasthan",
                      child: Text('Rajasthan'),
                    ),
                    DropdownMenuItem(
                      value: "Rajasthan",
                      child: Text('Rajasthan'),
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
                CustomTextField(
                  obSecure: false.obs,
                  hintText: '302004'.obs,
                  controller: name,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter name '),
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
                      border: Border.all(color: const Color(0xFFD7EBFF)),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4FAFF),
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
                AddText(text: 'Upload Logo must be PNG or JPEG, up to 1 MB each,  and 512 px and 512 px',color: Colors.grey,fontSize: 12,),
                SizedBox(height: AddSize.size16,),
                AddText(
                  text: "Event image",
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
                      border: Border.all(color: const Color(0xFFD7EBFF)),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4FAFF),
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
                AddText(text: 'Upload Logo must be PNG or JPEG, up to 1 MB each,  and 512 px and 512 px',color: Colors.grey,fontSize: 12,),
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
                      border: Border.all(color: const Color(0xFFD7EBFF)),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4FAFF),
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
                          child: AddText(text: 'I agree to the',fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),
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
                   Get.toNamed(MyRouter.eventLoginScreen);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: AppTheme.buttonColor,
                        ),
                      ),
                      minimumSize: const Size(340, 56),
                    ),
                    child: Center(child: AddText(text: 'REGISTER ACCOUNT',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
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
