import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'apptext_widget.dart';

class MainButton extends StatelessWidget {
  String tittle;
  Color?textcolor;
  Color? backgroundColor;
   MainButton({
    super.key,
    required this.screenheight,
    required this.screenWidth,
    required this.tittle,
    this.backgroundColor,
    this.textcolor
  });

  final double screenheight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenheight * 0.065,
      width: screenWidth * 0.9,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.5)),
           
          color: backgroundColor==null? const Color.fromARGB(255, 0, 104, 55):Color.fromRGBO(56, 154, 72, 0.3),),
      child: Center(
          child: AppText(
        tittle: tittle,
        fs: 22,
        textcolor: Colors.white,
      )),
    );
  }
}