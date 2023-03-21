import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:studio_live/widgets/add_text.dart';
import 'package:studio_live/widgets/dimentions.dart';

import '../widgets/app_theme.dart';
import '../widgets/common_textfield.dart';
class BookingInformationScreen extends StatefulWidget {
  const BookingInformationScreen({Key? key}) : super(key: key);

  @override
  State<BookingInformationScreen> createState() => _BookingInformationScreenState();
}

class _BookingInformationScreenState extends State<BookingInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF8E30),
        leading: InkWell(onTap: (){
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : Icon(Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text("Booking Information",style: TextStyle(color: Colors.white),),
        ),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size10,),
              AddText(
                text: "Add New Child",
                fontSize: AddSize.size18,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: AddSize.size30,),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddText(
                      text: "Child Name",
                      fontSize: AddSize.size16,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: AddSize.size10,),
                    CommonTextFieldWidget(
                      //controller: emailController,
                      hint: 'Jacky',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      //maxLength: 10,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText:
                            'Please Enter name '),
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
                    SizedBox(height: AddSize.size40,),
                    AddText(
                      text: "Child Name",
                      fontSize: AddSize.size16,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: AddSize.size10,),
                    CommonTextFieldWidget(
                      //controller: emailController,
                      hint: 'Alex',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      //maxLength: 10,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText:
                            'Please Enter name '),
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
                    SizedBox(height: AddSize.size40,),
                    AddText(
                      text: "Child Name",
                      fontSize: AddSize.size16,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: AddSize.size10,),
                    CommonTextFieldWidget(
                      //controller: emailController,
                      hint: 'Belly',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      //maxLength: 10,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText:
                            'Please Enter name '),
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
                  ],
                ),
              ),
              SizedBox(height: 200,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'ADD NEW CHILD ',color: AppTheme.primaryColor,))
              ),
              SizedBox(height: AddSize.size10,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF8E30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Center(child: AddText(text: 'PAY FOR CLASS ',color:Colors.white,))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
