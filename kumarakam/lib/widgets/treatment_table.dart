import 'package:flutter/material.dart';

class TreatmentTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      // border: TableBorder.all(), // Add borders to the table
      columnWidths: const {
        0: FixedColumnWidth(125.0), // Set column width for first column
        1: FixedColumnWidth(50.0),  // Set column width for second column
        2: FixedColumnWidth(50.0),  // Set column width for third column
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Male', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 166, 79),fontSize: 12)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Female', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 166, 79),fontSize: 12 )), // Changed to 'Female'
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Total', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 166, 79),fontSize: 13)),
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('4',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('4',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('2540',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('4',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('4',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('2540',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('4',style: TextStyle(color: Color.fromARGB(255, 115, 115, 115)),),
          ),
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





