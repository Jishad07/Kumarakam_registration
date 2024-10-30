import 'package:flutter/material.dart';

import 'add_treatment_widget.dart';
import 'custom_textformfield.dart';
import 'select_payment_option_widget.dart';
import 'select_treatment_time_widget.dart';


class RegisterFormFieldWidgets extends StatelessWidget {
  const RegisterFormFieldWidgets({
    super.key,
    required this.screenheight,
    required this.screenWidth,
  });

  final double screenheight;
  final double screenWidth;
 
  @override
  Widget build(BuildContext context) {

    
     TextEditingController name=TextEditingController();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView(children: [
           CustomTextFormField(
           
            controller: name,
            label: "Name",
            hintlabal: "Enter your full name",
            obscureText: false,
          ),
         const CustomTextFormField(
            label: "Whatsapp Number",
            hintlabal: "Enter your watsapp number",
            obscureText: false,
          ),
        const  CustomTextFormField(
            label: "Address",
            hintlabal: "Enter your full address",
            obscureText: false,
          ),
         const CustomTextFormField(
            label: "Location",
            hintlabal: "Choose your location",
            obscureText: false,
          ),
         const CustomTextFormField(
            label: "Branch",
            hintlabal: "Select your branch",
            obscureText: false,
          ),
          AddTreatmentWidget(screenheight: screenheight, screenWidth: screenWidth),
         const CustomTextFormField(
            label: "Total Amount",
            obscureText: false,
          ),
          const CustomTextFormField(
            label: "Discount Amount",
            obscureText: false,
          ),
          const SelectPaymentOptionWidget(),
         const SizedBox(
            height: 20,
          ),
          const CustomTextFormField(
            label: "Advance Amount",
            obscureText: false,
          ),
          CustomTextFormField(
            label: "Treatment Date",
            obscureText: false,
            suffixIcon: IconButton(
                onPressed: () {},
                icon:const Icon(Icons.calendar_month_rounded)),
          ),
         const SizedBox(
            height: 10,
          ),
          SelectTreatmentTimeWidget(screenheight: screenheight, screenWidth: screenWidth)
        ]),
      ),
    );
  }
}





