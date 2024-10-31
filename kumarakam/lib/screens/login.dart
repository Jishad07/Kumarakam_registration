import 'package:flutter/material.dart';
import 'package:kumarakam/screens/homepage.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';
import 'package:provider/provider.dart';
import '../services/authentication_provider.dart';
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
      resizeToAvoidBottomInset:
          true, 
      body: ListView(
       
        children: [
          Container(
            height: screenHeight * 0.3,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/images/logo_make_11_06_2023_115 1.png"),
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
                AppText(
                    tittle: "Login Or Register To Book Your Appointments",
                    fs: 26),
                SizedBox(height: screenHeight * 0.03),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your username";
                          }
                        },
                        focusNode: emailFocusNode,
                        controller: _emailController,
                        label: "UserName",
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
                        obscureText: true,
                      ),
                      SizedBox(height: screenHeight * 0.1),
                      GestureDetector(
                        onTap: () async {

                          if(formKey.currentState!.validate()){
                              final success = await Provider.of<AuthProvider>(
                                  context,
                                  listen: false)
                              .login(_emailController.text,
                                  _passwordController.text);
                          if (success) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) =>
                               const   Homepage(), // Your home page
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Login failed!'),
                            )
                            );
                        }
                          }
                         
                        },
                        child: MainButton(
                            tittle: "Login",
                            screenheight: screenHeight,
                            screenWidth: screenWidth),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      AppText(
                          tittle:
                              "By creating or logging into an account you are agreeing with our terms and conditions and privacy policy",
                          fs: 12)
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
