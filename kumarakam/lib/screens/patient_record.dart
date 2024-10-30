import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';
import 'package:kumarakam/widgets/treatment_table.dart';

import '../widgets/dashdivider.dart';

class PatientRecord extends StatelessWidget {
  const PatientRecord({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHieght=MediaQuery.of(context).size.height;
    return 
    Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12 ,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            // color: Colors.amber,
            height: screenHieght*0.1 ,
            width: double.infinity,
            child:  Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  CircleAvatar(
                  radius: 35 ,
                  backgroundImage: AssetImage("assets/images/Asset 1 2.png"),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppText(tittle: "Kumarakom",fs:8,),
                      AppText(tittle: " Cheepunkal P.O. Kumarakom, kottayam, Kerala - 686563 " ,fs:8,),
                      AppText(tittle:"e-mail: unknown@gmail.com" ,fs:8,),
                      AppText(tittle: "Mob: +91 9876543210 | +91 9786543210",fs:8,),
                      AppText(tittle: "GST No: 32AABCU9603R1ZW",fs:8,),
                    ],
                  ),
                )
              ],
            ),
          ),
         const Divider(),
          AppText(tittle: "Patient Details", fs: 12,fw: FontWeight.w500,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PatientDetailRow(tittle: "Name", tittledata: "Jishad", titlesize: 10,tittlefw: FontWeight.bold, ),
                  SizedBox(height: 10,),
                  PatientDetailRow(tittle: "Address", tittledata: "Ayikkarapadi", titlesize: 10,tittlefw: FontWeight.bold,),
                  SizedBox(height: 10,),
                  PatientDetailRow(tittle: "Whatsapp Number", tittledata: "9048751707", titlesize: 10,tittlefw: FontWeight.bold,),
                  SizedBox(height: 10,),
                ],
              ),
              ),
              Container(
                child:const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PatientDetailRow(tittle: "Booked On", tittledata: "31/04/24", titlesize: 10 ,tittlefw: FontWeight.bold,),
                  SizedBox(height: 10,),
                  PatientDetailRow(tittle: "Treatment Date", tittledata: "04/04/24", titlesize: 10,tittlefw: FontWeight.bold,),
                  SizedBox(height: 10,),
                  PatientDetailRow(tittle: "Treatment Time", tittledata: "12:24", titlesize: 10,tittlefw: FontWeight.bold,),
                  SizedBox(height: 10,),
                ],
              ),
              ),
            ],
          ),
           DashedDivider(dashWidth: 8.0 ,dashHeight: 1.0,dashSpacing: 4.0,screenwidth: screenWidth,),
          SizedBox(height: 10,),
          TreatmentTable(),
          DashedDivider( dashWidth: 8.0, dashHeight:1.0 ,dashSpacing: 4.0,screenwidth: screenWidth,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.end ,
           children: [
             const  SizedBox(height: 20,),
           
            
           Container(
            width: double.infinity,
            height: screenHieght*0.1,
            // color: Colors.amber,
           child:  const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Amount"),
                  Text("Discount"),
                  Text("Advance"),
                  
                ],
                            ),
              ),
              SizedBox(width: 50,),
            
               SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("7620"),
                  Text("500"),
                  Text("1200"),
                ],
                            ),
              ),
                        
            ],
            
           ) ,
            
           

           
           ),
          //  SizedBox(height: 10,),
           Text("------------------------"),
         const   Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Balance"),
              SizedBox(width: 70 ,),
              Text("65424"),
            ],
           ),
           SizedBox(height: 40,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               AppText(tittle: "Thank you for choosing us", fs: 22,textcolor:Color.fromARGB(255, 0, 166, 79) ,),
               SizedBox(
                width: screenWidth*0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(tittle: "Your well-being is our commitment, and we're honored ", fs: 8),
                    AppText(tittle: "you've entrusted us with your health journey", fs: 8)
                  ],
                ),
                
                ),
                Container(
                  height: 50,
                  width: 50 ,
                  child:Image(image: AssetImage("assets/images/logo_make_11_06_2023_115 1.png")),
                )
             ],
           ), 
           
           ]
         )
        

       
            ],
        ),
        
      ),
    );
  }
}

class PatientDetailRow extends StatelessWidget {
  final String tittle;
  final String tittledata;
  final FontWeight? tittlefw;
  final double titlesize;
  const PatientDetailRow({
    required this.tittle,
    required this.tittledata,
    required this.titlesize,
     this.tittlefw,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(tittle,style: TextStyle(fontWeight: tittlefw,fontSize: titlesize),),
         const SizedBox(width: 10,),
         Text(tittledata,style: TextStyle(fontSize: titlesize),)
        ],
      ),
    );
  }
}





class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      // border: TableBorder.all(), // Add borders to the table
      columnWidths: const {
         // Set column width for third column
        3: FixedColumnWidth(60.0),  
        4: FixedColumnWidth(65.0)   // Set column width for fourth column
      },
      children: const [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Treatment', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 166, 79),fontSize: 14 )),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 166, 79),fontSize: 12)),
          ),
        
         
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Panchakarma',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('230',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
         
         
         
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Njavara Kizhi Treatment',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('230',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
         
         
        ]),
        TableRow(children: [
          
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('6',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('2540',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
        ]),
      ],
    );
  }
}








 








 

