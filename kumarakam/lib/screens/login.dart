import 'package:flutter/material.dart';
import 'package:kumarakam/screens/searchpage.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';

import '../widgets/custom_textformfield.dart';
import '../widgets/mainbutton.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenheight * 0.3,
              width: screenWidth,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/logo_make_11_06_2023_115 1.png"),
                      fit: BoxFit.cover)),
              child: const Center(
                child: Image(image: AssetImage("assets/images/Asset 1 2.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: screenheight * 0.03,
                  ),
                  AppText(
                      tittle: "Login Or Register To Book Your Appoinments ",
                      fs: 26),
                  SizedBox(
                    height: screenheight * 0.03,
                  ),
                 const  CustomTextFormField(
                    label: "Email",
                    obscureText: false,
                  ),
                const  SizedBox(
                    height: 20,
                  ),
                const   CustomTextFormField(
                    label: "Password",
                    obscureText: false,
                  ),
                  SizedBox(
                    height: screenheight * 0.1,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const SearchPage()));
                    },
                    child: MainButton(tittle: "Login", screenheight: screenheight, screenWidth: screenWidth)),
                  SizedBox(height: screenheight*0.05,),
                AppText(tittle: "By creating or logging into an account you are agreeing with our terms and contitions and privacy policy ", fs: 12)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


