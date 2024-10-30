import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumarakam/screens/register_screen.dart';
import 'package:kumarakam/widgets/apptext_widget.dart';
import 'package:kumarakam/widgets/mainbutton.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
     final screenheight=MediaQuery.of(context).size.height;
    final screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SizedBox(height: screenheight*0.09,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14 ),
          child: Row(   
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
             const Image(image: AssetImage("assets/images/Vector.png"),width: 20,
             height: 20,)
            ],
          ),
        ),
      
        SizedBox(height: screenheight*0.03,),
          
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 14),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenheight*0.045,
                width:screenWidth*0.65 ,
               
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child:const  CupertinoTextField(
                  
                  )
                  ),
                Container(
                  width: screenWidth*0.25,
                  height: screenheight*0.045,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                   color: const Color.fromARGB(255, 0, 104, 55)),
                  
                  child: Center(child: AppText(tittle: "Search", fs: 14,textcolor: Colors.white,)),
                )
            ],
                   ),
         ),
        SizedBox(height: screenheight*0.03   ,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(tittle: "sort by:", fs: 14 ),
              // ElevatedButton(onPressed: (){}, child: Text("h"))
              Container(
                width: screenWidth*0.35,
                height: screenheight*0.05,
                decoration: BoxDecoration(
                  border: Border.all(style:BorderStyle.solid,
                  width: 0.1),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8 ),
                      child: AppText(tittle: "Date", fs: 14),
                    ),
                    IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: ListView.separated(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Card(
              
              child: Column(
                children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("${index+1}. "),
                SizedBox(width: 30,), 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  AppText(tittle: "Vikram Singh", fs: 18,fw: FontWeight.w500,),
                    Text("Couple compo package",style: TextStyle(color: Colors.green),),
                    Row(
                      
                      children: [
                        TextButton(onPressed: (){}, child:  Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,color: Colors.red[300],size: 14,),
                            
                          AppText(tittle: "31/01/24",fs: 12,textcolor:  Color.fromARGB(127, 0, 0, 0)),
                          SizedBox(width: 10,), 
                             Icon(Icons.people,color: Colors.red[300],size: 14,),
                           AppText(tittle: "Jishad",fs: 12,textcolor:  Color.fromARGB(127, 0, 0, 0), ),
                         
                  
                          ],
                        ),
                        )
                      ],
                    ),
                 
                  ],
                )
              ],),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppText(
                    
                    tittle: "View Booking details", fs: 12 ),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_forward_ios_outlined) )
                ],),
              )
              
            
            ],
            ),
            ),
          ), 
          separatorBuilder:(context, index) => SizedBox(height: 10,), 
          itemCount: 3)),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>RegisterScreen())),
            child: MainButton(tittle: "Register Now ", screenheight: screenheight, screenWidth: screenWidth))
      ],)
      ); 
  }
}