import 'package:flutter/material.dart';
import 'package:kumarakam/screens/searchpage.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';
import '../widgets/custom_textformfield.dart';
import '../widgets/mainbutton.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true, // Allow the UI to adjust when keyboard appears
      body: ListView( // Use ListView instead of SingleChildScrollView
        children: [
          Container(
            height: screenHeight * 0.3,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo_make_11_06_2023_115 1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Image(image: AssetImage("assets/images/Asset 1 2.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.03),
                AppText(tittle: "Login Or Register To Book Your Appointments", fs: 26),
                SizedBox(height: screenHeight * 0.03),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                        
                        },
                        focusNode: emailFocusNode,
                        controller: _emailController,
                        label: "Email",
                        hintlabal: "Enter your email",
                        obscureText: false,
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                        
                        },
                        focusNode: passwordFocusNode,
                        controller: _passwordController,
                        label: "Password",
                        hintlabal: "Enter your password",
                        obscureText: true, // Typically passwords should be obscured
                      ),
                      SizedBox(height: screenHeight * 0.1),
                      GestureDetector(
                        onTap: () {
                       
                        if(formKey.currentState!.validate()&&_emailController.text=="jishadajd1707@email.com"&&_passwordController.text=="1111111"){
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>SearchPage()));
                        }
                        },
                        child: MainButton(tittle: "Login", screenheight: screenHeight, screenWidth: screenWidth),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      AppText(tittle: "By creating or logging into an account you are agreeing with our terms and conditions and privacy policy", fs: 12)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
