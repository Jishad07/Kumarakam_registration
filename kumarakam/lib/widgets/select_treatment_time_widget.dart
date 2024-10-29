import 'package:flutter/material.dart';

class SelectTreatmentTimeWidget extends StatelessWidget {
  const SelectTreatmentTimeWidget({
    super.key,
    required this.screenheight,
    required this.screenWidth,
  });

  final double screenheight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Treatment Time",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          // SizedBox(height: 20), 
          //// Space between label and field
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             SizedBox(
              height: screenheight*0.06,
               width: screenWidth*0.45 ,
              child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
           hintText: "Hours",
           hintStyle:const TextStyle(color: Colors.black54),
          suffixIcon: IconButton(
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            onPressed: (){},),
            border:const OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)))
          ),
          
        ),
        ),
            SizedBox(
              height: screenheight*0.06 ,
      width: screenWidth*0.45, // Set a fixed width
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          // labelText: "Minutes",
          hintText: "Minutes",
          hintStyle:const TextStyle(color: Colors.black54),
          suffixIcon: IconButton(
            icon:const Icon(Icons.keyboard_arrow_down_outlined),
            onPressed: (){},
          ),
          border:const OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)))
        ),
        // controller: TextEditingController(text: selectedMinute),
      ),
    ),
              
             
            ],
          ),
        ],
      ),
    );
  }
}