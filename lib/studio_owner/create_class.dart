import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:studio_live/widgets/dimentions.dart';

import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
import '../widgets/custom_textfiled.dart';

class CreateClassOwner extends StatefulWidget {
  const CreateClassOwner({Key? key}) : super(key: key);

  @override
  State<CreateClassOwner> createState() => _CreateClassOwnerState();
}

class _CreateClassOwnerState extends State<CreateClassOwner> {
  TextEditingController dobController = TextEditingController();
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if(pickedfiles != null){
        imagefiles = pickedfiles;
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
  TextEditingController _classnameContr = TextEditingController();
  final formKey1 = GlobalKey<FormState>();
  var category = [
    'Folk Dance',
    'hip hop dance',
    'salsa dance',
  ];
  RxString dropDownValue2 = ''.obs;
  RxBool checkboxColor = false.obs;
  bool value = false;
  String dateInput11 = "";

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
            child : const Icon(Icons.arrow_back)),
        title: const Text("Create Class",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
               Form(
                 key: formKey1,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      const Text('Class Name',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       CustomTextField(
                         obSecure: false.obs,
                         hintText: 'Folk Dance'.obs,
                         controller: _classnameContr,
                       ),
                       addHeight(AddSize.size16),
                      const Text('Select category',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       SizedBox(
                         height: 50,
                         child:  PopupMenuButton<int>(
                           constraints:
                           const BoxConstraints(maxHeight: 400),
                           position: PopupMenuPosition.under,
                           offset: Offset.fromDirection(50, 100),
                           onSelected: (value) {
                             setState(() {
                               dropDownValue2.value = category[value];
                             });
                           },
                           // icon: Icon(Icons.keyboard_arrow_down),
                           itemBuilder: (context) => [
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         dropDownValue2.value =  '  Folk Dance';
                                         Get.back();
                                       },
                                       child: const Text('  Folk Dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Hip hop dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Hip hop dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Salsa Dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Salsa Dance'),
                                     ),
                                   ],
                                 )),
                           ],
                           child: Container(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 3, vertical: 10),
                             decoration: BoxDecoration(
                                 color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                 borderRadius: const BorderRadius.all(
                                     Radius.circular(8)),
                                 border: Border.all(color: AppTheme.boardercolor)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Obx(() {
                                   return Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment.center,
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [

                                       Center(
                                         child: Text(
                                           dropDownValue2.value
                                               .toString()
                                               .isEmpty
                                               ? "  Select category"
                                               : dropDownValue2.value
                                               .toString(),
                                           style: const TextStyle(
                                               fontSize: 14,
                                               color: Color(0xFF5E6282),
                                               fontWeight:
                                               FontWeight.w400),
                                         ),
                                       ),
                                     ],
                                   );
                                 }),
                                 const SizedBox(width: 10,),
                                 const Spacer(),
                                 const Icon(
                                   Icons.keyboard_arrow_down_outlined,
                                   color:Color(0xFF000000),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Select age group',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SizedBox(
                             height: 50,
                             width: 160,
                             child:  PopupMenuButton<int>(
                               constraints:
                               const BoxConstraints(maxHeight: 400),
                               position: PopupMenuPosition.under,
                               offset: Offset.fromDirection(50, 100),
                               onSelected: (value) {
                                 setState(() {
                                   dropDownValue2.value = category[value];

                                 });
                               },
                               // icon: Icon(Icons.keyboard_arrow_down),
                               itemBuilder: (context) => [
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             dropDownValue2.value =  '  Folk Dance';
                                             Get.back();
                                           },
                                           child: const Text('  Folk Dance'),
                                         ),
                                       ],
                                     )),
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             setState(() {
                                               dropDownValue2.value = '  Hip hop dance';
                                               Get.back();
                                             }); },
                                           child: const Text('  Hip hop dance'),
                                         ),
                                       ],
                                     )),
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             setState(() {
                                               dropDownValue2.value = '  Salsa Dance';
                                               Get.back();
                                             }); },
                                           child: const Text('  Salsa Dance'),
                                         ),
                                       ],
                                     )),
                               ],
                               child: Container(
                                 padding: const EdgeInsets.symmetric(
                                     horizontal: 3, vertical: 10),
                                 decoration: BoxDecoration(
                                     color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                     borderRadius: const BorderRadius.all(
                                         Radius.circular(8)),
                                     border: Border.all(color:AppTheme.boardercolor)),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Obx(() {
                                       return Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment.center,
                                         crossAxisAlignment:
                                         CrossAxisAlignment.center,
                                         children: [
                                           Center(
                                             child: Text(
                                               dropDownValue2.value
                                                   .toString()
                                                   .isEmpty
                                                   ? "  Min "
                                                   : dropDownValue2.value
                                                   .toString(),
                                               style: const TextStyle(
                                                   fontSize: 14,
                                                   color: Color(0xFF5E6282),
                                                   fontWeight:
                                                   FontWeight.w400),
                                             ),
                                           ),
                                         ],
                                       );
                                     }),
                                     const SizedBox(width: 10,),
                                     const Spacer(),
                                     const Icon(
                                       Icons.keyboard_arrow_down_outlined,
                                       color:Color(0xFF000000),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(
                             height: 50,
                             width: 160,
                             child:  PopupMenuButton<int>(
                               constraints:
                               const BoxConstraints(maxHeight: 400),
                               position: PopupMenuPosition.under,
                               offset: Offset.fromDirection(50, 100),
                               onSelected: (value) {
                                 setState(() {
                                   dropDownValue2.value = category[value];
                                 });
                               },
                               // icon: Icon(Icons.keyboard_arrow_down),
                               itemBuilder: (context) => [
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             dropDownValue2.value =  '  Folk Dance';
                                             Get.back();
                                           },
                                           child: const Text('  Folk Dance'),
                                         ),
                                       ],
                                     )),
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             setState(() {
                                               dropDownValue2.value = '  Hip hop dance';
                                               Get.back();
                                             }); },
                                           child: const Text('  Hip hop dance'),
                                         ),
                                       ],
                                     )),
                                 PopupMenuItem(
                                     child: Column(
                                       children: [
                                         InkWell(
                                           onTap: (){
                                             setState(() {
                                               dropDownValue2.value = '  Salsa Dance';
                                               Get.back();
                                             }); },
                                           child: const Text('  Salsa Dance'),
                                         ),
                                       ],
                                     )),
                               ],
                               child: Container(
                                 padding: const EdgeInsets.symmetric(
                                     horizontal: 3, vertical: 10),
                                 decoration: BoxDecoration(
                                     color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                     borderRadius: const BorderRadius.all(
                                         Radius.circular(8)),
                                     border: Border.all(color: AppTheme.boardercolor)),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Obx(() {
                                       return Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment.center,
                                         crossAxisAlignment:
                                         CrossAxisAlignment.center,
                                         children: [
                                           Center(
                                             child: Text(
                                               dropDownValue2.value
                                                   .toString()
                                                   .isEmpty
                                                   ? "  Max"
                                                   : dropDownValue2.value
                                                   .toString(),
                                               style: const TextStyle(
                                                   fontSize: 14,
                                                   color: Color(0xFF5E6282),
                                                   fontWeight:
                                                   FontWeight.w400),
                                             ),
                                           ),
                                         ],
                                       );
                                     }),
                                     const SizedBox(width: 10,),
                                     const Spacer(),
                                     const Icon(
                                       Icons.keyboard_arrow_down_outlined,
                                       color:Color(0xFF000000),
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       addHeight(AddSize.size16),
                       const Text('Date & Time',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
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
                         //controller: dobController,
                         readOnly: true,
                         hint: 'Select',
                         // prefix: Icon(Icons.access_time_rounded),
                         // keyboardType: TextInputType.,
                         textInputAction: TextInputAction.next,
                         bgColor:AppTheme.textfield.withOpacity(0.5),
                         validator: MultiValidator([
                           RequiredValidator(
                               errorText: 'Please select Date'),
                         ]),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Enter Price',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       CustomTextField(
                         obSecure: false.obs,
                         hintText: '\$30'.obs,
                       ),
                       addHeight(AddSize.size16),
                       const Text('Class Type',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       SizedBox(
                         height: 50,
                         child:  PopupMenuButton<int>(
                           constraints:
                           const BoxConstraints(maxHeight: 400),
                           position: PopupMenuPosition.under,
                           offset: Offset.fromDirection(50, 100),
                           onSelected: (value) {
                             setState(() {
                               dropDownValue2.value = category[value];
                             });
                           },
                           // icon: Icon(Icons.keyboard_arrow_down),
                           itemBuilder: (context) => [
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         dropDownValue2.value =  '  Folk Dance';
                                         Get.back();
                                       },
                                       child: const Text('  Folk Dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Hip hop dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Hip hop dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Salsa Dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Salsa Dance'),
                                     ),
                                   ],
                                 )),
                           ],
                           child: Container(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 3, vertical: 10),
                             decoration: BoxDecoration(
                                 color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                 borderRadius: const BorderRadius.all(
                                     Radius.circular(8)),
                                 border: Border.all(color: AppTheme.boardercolor)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Obx(() {
                                   return Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment.center,
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [
                                       Center(
                                         child: Text(
                                           dropDownValue2.value
                                               .toString()
                                               .isEmpty
                                               ? "  Online"
                                               : dropDownValue2.value
                                               .toString(),
                                           style: const TextStyle(
                                               fontSize: 14,
                                               color: Color(0xFF5E6282),
                                               fontWeight:
                                               FontWeight.w400),
                                         ),
                                       ),
                                     ],
                                   );
                                 }),
                                 const SizedBox(width: 10,),
                                 const Spacer(),
                                 const Icon(
                                   Icons.keyboard_arrow_down_outlined,
                                   color:Color(0xFF000000),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Online Meeting link',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       CustomTextField(
                         obSecure: false.obs,
                         hintText: 'jdyvRFgEv70eW8NWhFTC73/Studio'.obs,
                         suffixIcon: const Icon(Icons.copy,color: Color(0xFF000000),),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Highlights',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       SizedBox(
                         height: 50,
                         child:  PopupMenuButton<int>(
                           constraints:
                           const BoxConstraints(maxHeight: 400),
                           position: PopupMenuPosition.under,
                           offset: Offset.fromDirection(50, 100),
                           onSelected: (value) {
                             setState(() {
                               dropDownValue2.value = category[value];
                             });
                           },
                           // icon: Icon(Icons.keyboard_arrow_down),
                           itemBuilder: (context) => [
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         dropDownValue2.value =  '  Folk Dance';
                                         Get.back();
                                       },
                                       child: const Text('  Folk Dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Hip hop dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Hip hop dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Salsa Dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Salsa Dance'),
                                     ),
                                   ],
                                 )),
                           ],
                           child: Container(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 3, vertical: 10),
                             decoration: BoxDecoration(
                                 color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                 borderRadius: const BorderRadius.all(
                                     Radius.circular(8)),
                                 border: Border.all(
                                     color: AppTheme.boardercolor)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Obx(() {
                                   return Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment.center,
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [
                                       Center(
                                         child: Text(
                                           dropDownValue2.value
                                               .toString()
                                               .isEmpty
                                               ? "  Select"
                                               : dropDownValue2.value
                                               .toString(),
                                           style: const TextStyle(
                                               fontSize: 14,
                                               color: Color(0xFF5E6282),
                                               fontWeight:
                                               FontWeight.w400),
                                         ),
                                       ),
                                     ],
                                   );
                                 }),
                                 const SizedBox(width: 10,),
                                 const Spacer(),
                                 const Icon(
                                   Icons.keyboard_arrow_down_outlined,
                                   color:Color(0xFF000000),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Amenities',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       SizedBox(
                         height: 50,
                         child:  PopupMenuButton<int>(
                           constraints:
                           const BoxConstraints(maxHeight: 400),
                           position: PopupMenuPosition.under,
                           offset: Offset.fromDirection(50, 100),
                           onSelected: (value) {
                             setState(() {
                               dropDownValue2.value = category[value];
                             });
                           },
                           // icon: Icon(Icons.keyboard_arrow_down),
                           itemBuilder: (context) => [
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         dropDownValue2.value =  '  Folk Dance';
                                         Get.back();
                                       },
                                       child: const Text('  Folk Dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Hip hop dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Hip hop dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Salsa Dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Salsa Dance'),
                                     ),
                                   ],
                                 )),
                           ],
                           child: Container(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 3, vertical: 10),
                             decoration: BoxDecoration(
                                 color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                 borderRadius: const BorderRadius.all(
                                     Radius.circular(8)),
                                 border: Border.all(color: AppTheme.boardercolor)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Obx(() {
                                   return Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment.center,
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [
                                       Center(
                                         child: Text(
                                           dropDownValue2.value
                                               .toString()
                                               .isEmpty
                                               ? "  Select"
                                               : dropDownValue2.value
                                               .toString(),
                                           style: const TextStyle(
                                               fontSize: 14,
                                               color: Color(0xFF5E6282),
                                               fontWeight:
                                               FontWeight.w400),
                                         ),
                                       ),
                                     ],
                                   );
                                 }),
                                 const SizedBox(width: 10,),
                                 const Spacer(),
                                 const Icon(
                                   Icons.keyboard_arrow_down_outlined,
                                   color:Color(0xFF000000),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Health & Safety measures',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       SizedBox(
                         height: 50,
                         child:  PopupMenuButton<int>(
                           constraints:
                           const BoxConstraints(maxHeight: 400),
                           position: PopupMenuPosition.under,
                           offset: Offset.fromDirection(50, 100),
                           onSelected: (value) {
                             setState(() {
                               dropDownValue2.value = category[value];
                             });
                           },
                           // icon: Icon(Icons.keyboard_arrow_down),
                           itemBuilder: (context) => [
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         dropDownValue2.value =  '  Folk Dance';
                                         Get.back();
                                       },
                                       child: const Text('  Folk Dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Hip hop dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Hip hop dance'),
                                     ),
                                   ],
                                 )),
                             PopupMenuItem(
                                 child: Column(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           dropDownValue2.value = '  Salsa Dance';
                                           Get.back();
                                         }); },
                                       child: const Text('  Salsa Dance'),
                                     ),
                                   ],
                                 )),
                           ],
                           child: Container(
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 3, vertical: 10),
                             decoration: BoxDecoration(
                                 color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                                 borderRadius: const BorderRadius.all(
                                     Radius.circular(8)),
                                 border: Border.all(color: AppTheme.boardercolor)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Obx(() {
                                   return Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment.center,
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [

                                       Center(
                                         child: Text(
                                           dropDownValue2.value
                                               .toString()
                                               .isEmpty
                                               ? "  Select"
                                               : dropDownValue2.value
                                               .toString(),
                                           style: const TextStyle(
                                               fontSize: 14,
                                               color: Color(0xFF5E6282),
                                               fontWeight:
                                               FontWeight.w400),
                                         ),
                                       ),
                                     ],
                                   );
                                 }),
                                 const SizedBox(width: 10,),
                                 const Spacer(),
                                 const Icon(
                                   Icons.keyboard_arrow_down_outlined,
                                   color:Color(0xFF000000),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       addHeight(AddSize.size16),
                       const Text('Description',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       CustomTextField(
                         obSecure: false.obs,
                         hintText: 'value'.obs,
                         isMulti: true,
                       ),
                       addHeight(AddSize.size16),
                       const Text('Class images',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       InkWell(
                         onTap: (){
                           openImages();
                         },
                         child: Container(
                           height: 113,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                             color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                             borderRadius: BorderRadius.circular(12),
                             border: Border.all(color: AppTheme.boardercolor)
                           ),
                           child: imagefiles != null?Wrap(
                             children: imagefiles!.map((imageone){
                               return Container(
                                   child:Card(
                                     child: Container(
                                       height: 67, width:64,
                                       child: Image.file(File(imageone.path),fit: BoxFit.cover),
                                     ),
                                   )
                               );
                             }).toList(),
                           ): Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                            Image.asset('assets/images/export.png',width: 24,height: 24,),
                               const Text('Upload images',style: TextStyle(
                                 color: Color(0xFF5E6282),
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                               ),),
                               const Text('Upload max 5 images',style: TextStyle(
                                 color: Color(0xFF39439D),
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400,
                               ),),
                             ],
                           ),
                         ),
                       ),

                       addHeight(AddSize.size16),
                       const Text('Class video',style: TextStyle(
                         color: Color(0xFF1F1F1F),
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),),
                       addHeight(AddSize.size6),
                       InkWell(
                         onTap: (){
                           openImages();
                         },
                         child: Container(
                           height: 113,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                               color: AppTheme.appPrimaryPinkColor.withOpacity(.02),
                               borderRadius: BorderRadius.circular(12),
                               border: Border.all(color: AppTheme.boardercolor)
                           ),
                           child: imagefiles != null?Wrap(
                             children: imagefiles!.map((imageone){
                               return Container(
                                   child:Card(
                                     child: Container(
                                       height: 67, width:64,
                                       child: Image.file(File(imageone.path),fit: BoxFit.cover),
                                     ),
                                   )
                               );
                             }).toList(),
                           ): Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset('assets/images/export.png',width: 24,height: 24,),
                               const Text('Upload videos',style: TextStyle(
                                 color: Color(0xFF5E6282),
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                               ),),
                               const Text('Upload max 5 Videos',style: TextStyle(
                                 color: Color(0xFF39439D),
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400,
                               ),),
                             ],
                           ),
                         ),
                       ),
                       addHeight(AddSize.size10),
                       Column(
                         children: [
                           Row(
                             children: [
                               Theme(
                                 data: ThemeData(
                                   unselectedWidgetColor: checkboxColor
                                       .value == false ? Colors.grey
                                       .withOpacity(.78) : Colors.red,

                                 ),
                                 child: Checkbox(
                                     materialTapTargetSize: MaterialTapTargetSize
                                         .shrinkWrap,
                                     value: value,
                                     activeColor: AppTheme
                                         .primaryColor,
                                     onChanged: (newValue) {
                                       setState(() {
                                         value =
                                         newValue!;
                                         checkboxColor.value =
                                         !newValue!;
                                       });
                                     }),
                               ),
                               const AddText(
                                 text: 'I agree to the', fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xFF5E6282),),
                               const SizedBox(width: 3,),
                               const AddText(text: 'Cancellation Policy.',
                                 fontSize: 13,
                                 fontWeight: FontWeight.w500,
                                 color: AppTheme.primaryColor,),
                             ],
                           ),
                         ],
                       ),
                       addHeight(AddSize.size30),
                       ElevatedButton(onPressed: ()
                       {
                         Get.toNamed(MyRouter.bookingScreen);
                       },
                           style: ElevatedButton.styleFrom(
                             backgroundColor: AppTheme.buttonColor,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                               side: const BorderSide(
                                 color: AppTheme.buttonColor,
                               ),
                             ),
                             minimumSize: const Size(274, 56),
                           ),
                           child: const Center(child: AddText(text: 'Create class',color:Colors.white,fontSize: 19,fontWeight: FontWeight.w600,))
                       ),
                       addHeight(AddSize.size30),

                     ],
                   )
               ),
            ],
          ),
        ),
      ),
    );
  }
}
