import 'package:flutter/material.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';
import 'package:kumarakam/widgets/mainbutton.dart';
import '../widgets/register_form_field_widget.dart';
import 'patient_record.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenheight * 0.09,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                const Image(
                  image: AssetImage("assets/images/Vector.png"),
                  width: 20,
                  height: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: AppText(
              tittle: "Register",
              fs: 24,
              fw: FontWeight.w500,
            ),
          ),
          const Divider(),
          RegisterFormFieldWidgets(screenheight: screenheight, screenWidth: screenWidth),
          Padding(
              padding: EdgeInsets.all(15),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const PatientRecord()));
                },
                  child: MainButton(
                      screenheight: screenheight,
                      screenWidth: screenWidth,
                      tittle: "Save")))
        ],
      ),
    );
  }
}


