import '../health_combined_screen/widgets/healthcombined_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/widgets/custom_outlined_button.dart';

class HealthCombinedScreen extends StatelessWidget {
  const HealthCombinedScreen({Key? key}) : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Your heart rate and blood pressure returns to normal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),
                
                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Carbon monoxide has started leaving your body",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Nicotine is starting to get flushed out of your body.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Oxygen levels start to increase and gradually normalises.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Nicotine is completely of your body.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Body energy has started to return to normal levels",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Antibodies, red blood cells and white blood cells are increasing",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Your trachea and broncus start to heal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Body starts removing excess mucus, tar and harmful toxins",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Vitamin levels start to regain balance",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Your overall immune system is back on track",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Heart disease risk reduced by half",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Bladder is recovering and risk of cancer is reduced",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Heart attack is reduced by half",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),

                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "Heart attack and stroke risks are back to normal chances",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
                        ),
                      ),
                      
                      ],),
                      
                  ),
                ),


                SizedBox(
                  height: 25,
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff0f2f4),
                      borderRadius: BorderRadius.circular(16),
                      ),
                    
                    child: Row(children: [
                      _buildYourHeartRate(context),
                      
                      Expanded(
                        child: Text(
                          "All symptoms have been diminished",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                          maxLines: 2,   
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

  /// Section Widget
  Widget _buildYourHeartRate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.v),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 5.h,
          top: 5.v,
          right: 5.h,
          bottom: 5.v,
        ),
        strokeWidth: 9.h,
        gradient: LinearGradient(
          begin: Alignment(-3, -3),
          end: Alignment(0, -3),
          colors: [
            appTheme.amber900,
            appTheme.whiteA700.withOpacity(0),
            appTheme.amber900,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(38),
          topRight: Radius.circular(38),
          bottomLeft: Radius.circular(38),
          bottomRight: Radius.circular(38),
        ),
        child: CustomOutlinedButton(
          height: 56.v,
          width: 57.h,
          text: "100%",
          buttonTextStyle: theme.textTheme.labelMedium!,
        ),
      ),
    );
  }

  /// Section Widget
   Widget _buildHealthCombined(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(height: 1.v);
      },
      itemCount: 29,
      itemBuilder: (context, index) {
        return HealthcombinedItemWidget();
      },
    );
  }
}
