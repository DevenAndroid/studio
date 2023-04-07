import 'dart:io';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../../Router/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/app_theme.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/custom_textfiled.dart';
import '../../widgets/dimentions.dart';
class AddNewCareGiverScreen extends StatefulWidget {
  const AddNewCareGiverScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCareGiverScreen> createState() => _AddNewCareGiverScreenState();
}

class _AddNewCareGiverScreenState extends State<AddNewCareGiverScreen> {
  TextEditingController childName = TextEditingController();
  TextEditingController childAge = TextEditingController();
  final ImagePicker imgpicker2 = ImagePicker();
  List<XFile>? imagefiles2;

  openImagesNewChild() async {
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
  @override
  final _formKey = GlobalKey<FormState>();
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
        title: const Text("Add new Caregiver",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AddSize.size20,),
                AddText(
                  text: "Caregiver",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size10,),
                CustomTextField(
                  hintText: 'Jacky smith'.obs,
                  obSecure: false.obs,
                  controller: childName,
                  keyboardType: TextInputType.name,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please enter caregiver name '),
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
                CustomTextField(
                  hintText: '987-654-3210'.obs,
                  obSecure: false.obs,
                  controller: childAge,
                  keyboardType: TextInputType.name,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText:
                        'Please Enter child name '),
                  ]),
                ),
                const SizedBox(height: 16),
                AddText(
                  text: "Upload child image",
                  fontSize: AddSize.size16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: AddSize.size30,),
                InkWell(
                  onTap: (){
                    openImagesNewChild();
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
                const SizedBox(height: 130,),
                ElevatedButton(onPressed: ()
                {
                  Get.toNamed(MyRouter.parentDashboardScreen);
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
                    child: const Center(child: AddText(text: 'ADD',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
