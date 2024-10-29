import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppText extends StatelessWidget {
  String tittle;
  Color? textcolor;
  FontWeight? fw;
  double fs;
   AppText({
    super.key,
    required this.tittle,
    required this.fs,
    this.textcolor,
    this.fw,
  });

  @override
  Widget build(BuildContext context) {
    return Text(tittle,style: TextStyle(fontSize:fs,color: textcolor,fontWeight: fw),);
  }
}