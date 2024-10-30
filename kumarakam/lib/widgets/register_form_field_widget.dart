import 'package:flutter/material.dart';

import 'add_treatment_widget.dart';
import 'custom_textformfield.dart';
import 'select_payment_option_widget.dart';
import 'select_treatment_time_widget.dart';
final registorformKey = GlobalKey<FormState>();


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
    
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _whatappController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _locationController = TextEditingController();
    final TextEditingController _branchController = TextEditingController();
    final TextEditingController _totalamountcontroller =
        TextEditingController();

    final TextEditingController _discountcontroller = TextEditingController();
    final TextEditingController _advanceamountcontroller =
        TextEditingController();
    final TextEditingController _treatmentdatecontroller =
        TextEditingController();

    return Expanded(
      child: Form(
        key: registorformKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListView(children: [
            CustomTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
              },
              controller: _nameController,
              label: "Name",
              hintlabal: "Enter your full name",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your watsapp Number";
                }
              },
              controller: _whatappController,
              label: "Whatsapp Number",
              hintlabal: "Enter your watsapp number",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Address";
                }
              },
              controller: _addressController,
              label: "Address",
              hintlabal: "Enter your full address",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Location";
                }
              },
              controller: _locationController,
              label: "Location",
              hintlabal: "Choose your location",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your branch";
                }
              },
              controller: _branchController,
              label: "Branch",
              hintlabal: "Select your branch",
              obscureText: false,
            ),
            AddTreatmentWidget(
                screenheight: screenheight, screenWidth: screenWidth),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your total Amount";
                }
              },
              controller: _totalamountcontroller,
              label: "Total Amount",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Discount Amount";
                }
              },
              controller: _discountcontroller,
              label: "Discount Amount",
              obscureText: false,
            ),
            const SelectPaymentOptionWidget(),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Advance Amount";
                }
              },
              controller: _advanceamountcontroller,
              label: "Advance Amount",
              obscureText: false,
            ),
            CustomTextFormField(
               validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your treatment date";
                }
              },
              controller: _treatmentdatecontroller,
              label: "Treatment Date",
              obscureText: false,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_month_rounded)),
            ),
            const SizedBox(
              height: 10,
            ),
            SelectTreatmentTimeWidget(
                screenheight: screenheight, screenWidth: screenWidth)
          ]),
        ),
      ),
    );
  }
}
