import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'apptext_widget.dart';

class MainButton extends StatelessWidget {
  String tittle;
   MainButton({
    super.key,
    required this.screenheight,
    required this.screenWidth,
    required this.tittle
  });

  final double screenheight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenheight * 0.065,
      width: screenWidth * 0.9,
      decoration:const  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.5)),

          color: const Color.fromARGB(255, 0, 104, 55)),
      child: Center(
          child: AppText(
        tittle: tittle,
        fs: 22,
        textcolor: Colors.white,
      )),
    );
  }
}