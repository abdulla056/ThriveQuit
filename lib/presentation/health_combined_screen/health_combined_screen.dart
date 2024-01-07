// ignore_for_file: unused_import

import '../health_combined_screen/widgets/healthcombined_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_outlined_button.dart';

class HealthCombinedScreen extends StatelessWidget {

  
  const HealthCombinedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text(
                      'Your Health',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),                    
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                  ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff0f2f4),
                          borderRadius: BorderRadius.circular(16),
                          ),
                        child: Row(children: [
                          SizedBox(
                            width: 8,
                          ),
                          HealthcombinedItemWidget(
                            percentage: '100%',
                            ),
                          SizedBox(
                            width: 15,
                          ),
                          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start, 
                              children: [
                                Text(
                                  "Your heart rate and blood pressure returns to normal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: true,
                                  maxLines: 2,   
                                ),
                                
                                Text(
                                  "5 hours",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            
                          ),
                          
                          ],),
                          
                      ),
                    ),
                  ],
                ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.orange,
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '100%',   
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Carbon monoxide has started leaving your body",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "7 hours",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.orange,
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '100%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nicotine is starting to get flushed out of your body.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                              "10 hours",
                              style: TextStyle(
                                color: const Color.fromARGB(137, 137, 137, 137),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),   
                      ),
                      ],),  
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.orange,
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '100%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oxygen levels start to increase and gradually normalises.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "1.5 days",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.orange,
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '100%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nicotine is completely of your body.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "2 days",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.orange,
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '100%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Body energy has started to return to normal levels",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "3 days",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '50%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Antibodies, red blood cells and white blood cells are increasing",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "6 days",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                     HealthcombinedItemWidget(
                      percentage: '43%',
                      ),
                     SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your trachea and broncus start to heal",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "1 week",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '14%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Body starts removing excess mucus, tar and harmful toxins",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "3 weeks",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '9%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vitamin levels start to regain balance",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "5 weeks",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                     HealthcombinedItemWidget(
                      percentage: '1%',
                      ),
                     SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your overall immune system is back on track",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "9 months",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '1%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Heart disease risk reduced by half",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "1 year",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                     HealthcombinedItemWidget(
                      percentage: '1%',
                      ),
                     SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bladder is recovering and risk of cancer is reduced",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "3 years",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                     HealthcombinedItemWidget(
                      percentage: '0%',
                      ),
                     SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Heart attack is reduced by half",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "5 years",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '0%',
                        ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Heart attack and stroke risks are back to normal chances",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "15 years",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Center(child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: const Color.fromARGB(209, 209, 209, 209),
                          )),),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      SizedBox(
                        width: 8,
                      ),
                      HealthcombinedItemWidget(
                        percentage: '0%',
                      ),
                      SizedBox(
                        width: 15,
                        ),
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All symptoms have been diminished",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 2,   
                            ),
                            Text(
                                  "50 years",
                                  style: TextStyle(
                                    color: const Color.fromARGB(137, 137, 137, 137),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ],
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),
            ],),
          )
        ),
      ),
    );
  }
}
