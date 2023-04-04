import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Router/my_router.dart';
import '../widgets/add_text.dart';
import '../widgets/app_theme.dart';
import '../widgets/dimentions.dart';

class CheckoutOwner extends StatefulWidget {
  const CheckoutOwner({Key? key}) : super(key: key);

  @override
  State<CheckoutOwner> createState() => _CheckoutOwnerState();
}

class _CheckoutOwnerState extends State<CheckoutOwner> {
  List method = ["Google pay","PayPal", "Credit Card"];
  String? selectedMethod;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: InkWell(onTap: (){
          Get.back();
          //Get.toNamed(MyRouter.studioScreen);
        },
            child : const Icon(Icons.arrow_back)),
        // title: Padding(
        //   padding: const EdgeInsets.only(left: 80),
        //   child: Text("Checkout",style: TextStyle(color: Colors.white),),
        // ),
        centerTitle: true,
        title: const Text("Checkout",style: TextStyle(color: Colors.white),),
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AddSize.size20,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Platinum Member',
                            style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xFF39439D),
                            ),
                          ),
                          Text('\$49',
                            style: TextStyle(
                              fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xFFFF8E30),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Icon(Icons.check,color: Color(0xFFC9002B),size: 20,),
                                SizedBox(width: 11,),
                                Text('\$x for #1 spot'),
                              ],
                            );
                          }),
                     const SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 19,),
              const Padding(
                padding:  EdgeInsets.only(left:5.0),
                child:  AddText(text: 'Select The Payment Method',fontSize: 18,),
              ),
              SizedBox(height: AddSize.size20,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .10,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(AddSize.size20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/Group1000003786.png',
                        width: AddSize.size40,
                        height: AddSize.size40,
                        // fit: BoxFit.cover,
                      ),
                      // SizedBox(
                      //   width: AddSize.size10,
                      // ),
                      AddText(
                        text: '**** **** **** 0007',
                        textAlign: TextAlign.start,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font16,
                      ),
                      SizedBox(
                        width: AddSize.size25,
                      ),
                      addRadioButton(
                        0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AddSize.size10,),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .10,
                  width:  MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(AddSize.size20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/image32.png',
                        width: AddSize.size40,
                        height: AddSize.size40,
                        // fit: BoxFit.cover,
                      ),
                      AddText(
                        text: '**** **** **** 0012',
                        textAlign: TextAlign.start,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: addRadioButton(
                          1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:120,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'ADD NEW CARD',color:AppTheme.primaryColor,fontWeight: FontWeight.w500,fontSize: 16,))
              ),
              SizedBox(height: AddSize.size10,),
              ElevatedButton(onPressed: ()
              {
                Get.toNamed(MyRouter.thankYouScreen);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Center(child: AddText(text: 'CONFIRM',color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18,))
              ),
              SizedBox(height: AddSize.size20,),
            ],
          ),
        ),
      ),
    );
  }
  Row addRadioButton(int btnValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: AppTheme.primaryColor,
          value: method[btnValue],
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              print(value);
              selectedMethod = value;
            });
          },
        ),
      ],
    );
  }
}
