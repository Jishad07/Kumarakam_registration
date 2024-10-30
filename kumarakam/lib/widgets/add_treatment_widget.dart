import 'package:flutter/material.dart';
import 'package:kumarakam/widgets/custom_textformfield.dart';

import 'apptext_widget.dart';
import 'mainbutton.dart';

class AddTreatmentWidget extends StatelessWidget {
  const AddTreatmentWidget({
    super.key,
    required this.screenheight,
    required this.screenWidth,
  });

  final double screenheight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AppText(tittle: "Treatments", fs: 20),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(tittle: "1.", fs: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(tittle: "Couple compo package", fs: 20),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(tittle: "Male", fs: 16),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(7)),
                                height: 30,
                                width: 40,
                               
                              ),
                              AppText(tittle: "Female", fs: 16),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(7)),
                                height: 30,
                                width: 40,
            
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.close,
                          color: Colors.red[500],
                          size: 20,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
         onTap: (){
          print("Add treatment button clicked");
          _showAddTreatmentDialog(context);
         },
          child: MainButton(
            screenheight: screenheight,
            screenWidth: screenWidth,
            tittle: "+Add treatment",
            backgroundColor: Colors.amber,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}

  void _showAddTreatmentDialog(BuildContext context) {
    // Create a TextEditingController to manage the input
    TextEditingController treatmentController = TextEditingController();

    showDialog(
      
      context: context,
      builder: (BuildContext context) {
        final screenWidth=MediaQuery.of(context).size.width;
        final screenHeight=MediaQuery.of(context).size.height;
        return AlertDialog(
          
          // title: Text("Add Treatment"),
          content:  Column(
          
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start,
           // Allow the dialog to be as small as needed
            children: [
            CustomTextFormField(
              label: "Choose Treatment",
              hintlabal: "Choose prefered treatment",
              suffixIcon: IconButton(onPressed: (){
               
              }, icon: const Icon(Icons.keyboard_arrow_down_outlined)),),
              AppText(tittle: "Add Patients", fs: 18),
              SizedBox(height: 10,),
               Row(
                children: [
                  Container(
                    height: screenHeight*0.06,
                    width: screenWidth*0.25 ,
                    decoration:  BoxDecoration(
                      color: const Color.fromRGBO(217, 217, 217, 0.25),
                    borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Center(
                      child: Text("Male"),
                    ),
                    ),
                   const  SizedBox(width: 10,),
                  Container(
                    height: screenHeight*0.06,
                    width: screenWidth*0.35 , 
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        CircleAvatar(radius: 15,
                      backgroundColor:Color.fromRGBO(0, 104, 55, 1), 
                      child: AppText(tittle: '-', fs: 20,textcolor: Colors.white ,)
                      ),
                        Container(
                          height: 30,
                          width: 40,
                          decoration:  BoxDecoration(
                            border:Border.all(),
                            borderRadius: BorderRadius.circular(5)
                          
                          ),
                        ),
                         CircleAvatar(radius: 15,
                       backgroundColor:Color.fromRGBO(0, 104, 55, 1),
                       child:  AppText(tittle: '+', fs: 20,textcolor: Colors.white,),
                       )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
               Row(
                children: [
                  Container(
                    height: screenHeight*0.06,
                    width: screenWidth*0.25 ,
                    decoration:  BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.25),
                       borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Center(
                      child: Text("Female"),
                    ),
                    ),
                   const  SizedBox(width: 10,),
                  Container(
                    height: screenHeight*0.06,
                    width: screenWidth*0.35 , 
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       CircleAvatar(radius: 15,
                      backgroundColor:Color.fromRGBO(0, 104, 55, 1), 
                      child:  AppText(tittle: '-', fs: 20,textcolor: Colors.white,),
                      ),
                        Container(
                          height: 30,
                          width: 40,
                          decoration:  BoxDecoration(
                             border:Border.all(),
                          borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                       CircleAvatar(radius: 15,
                       backgroundColor:Color.fromRGBO(0, 104, 55, 1), 
                       child:  AppText(tittle: '+', fs: 20,textcolor: Colors.white,),
                       )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              MainButton(screenheight: screenHeight, screenWidth: screenWidth, tittle: "Save")
            ],
          ),
         
        );
      },
    );
  }

