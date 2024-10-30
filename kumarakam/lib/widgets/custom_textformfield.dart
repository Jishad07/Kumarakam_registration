import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String? hintlabal;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.hintlabal,
    this.suffixIcon,
    this.validator,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          const SizedBox(height: 4), // Space between label and field
          TextFormField(
            textInputAction: TextInputAction.done,
            controller: controller,
            obscureText: obscureText,
            validator: validator,
            focusNode: focusNode,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: hintlabal,
              hintStyle: const TextStyle(fontSize: 12),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              suffixIcon: suffixIcon,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
