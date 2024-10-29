import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kumarakam/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   Timer(const Duration(seconds: 3), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>LogInPage()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenheight=MediaQuery.of(context).size.height;
     final screenWidth=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
            height: screenheight,
            width: screenWidth,
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/logo_make_11_06_2023_115 1.png"),fit: BoxFit.cover)),
        child: Center(
          child: Image(image: AssetImage("assets/images/Asset 1 2.png")),
        ),
      ),
      // body: Container(
      //   height: screenheight,
      //   width: screenWidth,
      //   child: Image(image: AssetImage("assets/images/logo_make_11_06_2023_115 1.png",),fit: BoxFit.fill,),

      // ),
    );
  }
}