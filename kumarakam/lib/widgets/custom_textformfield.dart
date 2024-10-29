import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        SizedBox(height: 8), // Space between label and field
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration:const  InputDecoration(
            hintText: "Enter your email",
            hintStyle: TextStyle(fontSize: 12,),
            border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10))),
            
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }
}