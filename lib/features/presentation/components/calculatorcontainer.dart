import 'package:bmi_calculator_01/features/presentation/pages/constans/app_colors.dart';
import 'package:bmi_calculator_01/features/presentation/pages/constans/app_textstyls.dart';
import 'package:flutter/material.dart';

class CalculatorContainer extends StatelessWidget {
  const CalculatorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 73,
      color: AppColors.buttonContainerColor,
      child: const Center(
        child: Text("CALKULATOR",
        style: AppTextstyles.bmiTexstyle),
      ),
    );
  }
}