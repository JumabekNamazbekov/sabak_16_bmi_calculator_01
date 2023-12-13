import 'package:bmi_calculator_01/features/presentation/pages/constans/app_textstyls.dart';
import 'package:flutter/material.dart';

class BmiContainer extends StatelessWidget {
   const BmiContainer({
    super.key, 

     this.icon, 
     this.text, 
     this.san, 
     this.smText,
      this.widthSize = 150, 
      this.heightSize = 177,
  });
  final IconData? icon;
  final String? text;
  final int? san;
   final String ?smText;
   final double ?widthSize ;
  final double ?heightSize ;


  @override
  Widget build(BuildContext context) {
    return Container(
                  width: widthSize,
                  height: heightSize,
                decoration: BoxDecoration( 
                   color: Colors.black,
                  borderRadius:
                   BorderRadius.
                   circular(10),

                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(icon,color: Colors.white,size: 70, ),
  
                    Text(text??'',style: AppTextstyles.maleTextstyle,
                    ),
                    Text(
                      smText??"",
                      style: AppTextstyles.smTextstyle,
                     ),
                   
                  ],
                  ),
                  );
  }
}