import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final double dashWidth; // Width of each dash
  final double dashHeight; // Height of each dash
  final Color color; // Color of the dashes
  final double dashSpacing;
  final double? dashCount; 
  final double screenwidth;// Space between dashes

   DashedDivider(
    {
    
    Key? key,
    required this.screenwidth,
    required this.dashWidth  ,
   required this.dashHeight  ,
    this.color = Colors.black,
     required this.dashSpacing,  
     this.dashCount// Space between dashes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final totalDashWidth = dashWidth + dashSpacing; // Total width of a dash plus spacing
    final dashCount = ( screenwidth/ totalDashWidth-2).floor(); // Calculate the number of dashes

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dashCount, // Use the calculated number of dashes
        (index) => Container(
          width: dashWidth,
          height: dashHeight,
          color: color,
          margin: EdgeInsets.only(right: index < dashCount - 1 ? dashSpacing : 0), // Space only after each dash except the last
        ),
      ),
    );
  }
}