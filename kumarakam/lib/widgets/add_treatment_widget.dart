import 'package:flutter/material.dart';

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
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              AppText(
                                  tittle: "Couple compo package",
                                  fs: 20),
                                  SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, 
                                children: [
                                  AppText(tittle: "Male", fs: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(
                                                7)),
                                    height: 30,
                                    width: 40,
                                    // color: Colors.amber,
                                  ),
                                  AppText(tittle: "Female", fs: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(
                                                7)),
                                    height: 30,
                                    width: 40,
                                    // color: Colors.amber,
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
                            SizedBox(
                              height: 30, 
                            ),
                            Icon(
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
            SizedBox(
              height: 10,
            ),
            MainButton(
              screenheight: screenheight,
              screenWidth: screenWidth,
              tittle: "+Add treatment",
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              height: 20,
            )
          ]),
    );
  }
}