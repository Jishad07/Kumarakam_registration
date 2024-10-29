import 'package:flutter/material.dart';

import 'apptext_widget.dart';

class SelectPaymentOptionWidget extends StatelessWidget {
  const SelectPaymentOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Select Option",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          const SizedBox(height: 20), // Space between label and field
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 25, 
                    height: 25, 
                    decoration: BoxDecoration(
                      shape: BoxShape
                          .circle, 
                      color: Colors
                          .white, 
                      border: Border.all(
                        color: Colors.black,
                        width: 1, 
                      ),
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  AppText(
                    tittle: "Cash",
                    fs: 14,
                    fw: FontWeight.w500,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 25, // Width of the circular container
                    height: 25, // Height of the circular container
                    decoration: BoxDecoration(
                      shape: BoxShape
                          .circle, // Makes the container circular
                      color: Colors
                          .white, // Background color inside the circle
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1, // Border width
                      ),
                    ),
                  ),
                 const SizedBox(
                    width: 5,
                  ),
                  AppText(
                    tittle: "Card",
                    fs: 14,
                    fw: FontWeight.w500,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 25, // Width of the circular container
                    height: 25, // Height of the circular container
                    decoration: BoxDecoration(
                      shape: BoxShape
                          .circle, // Makes the container circular
                      color: Colors
                          .white, // Background color inside the circle
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 1, // Border width
                      ),
                    ),
                  ),
                const  SizedBox(
                    width: 5,
                  ),
                  AppText(
                    tittle: "UPI",
                    fs: 14,
                    fw: FontWeight.w500,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}