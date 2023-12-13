import 'package:bmi_calculator_01/features/presentation/components/bmicontainer.dart';
import 'package:bmi_calculator_01/features/presentation/pages/constans/app_colors.dart';
import 'package:bmi_calculator_01/features/presentation/pages/constans/app_sized_box.dart';
import 'package:bmi_calculator_01/features/presentation/pages/constans/app_textstyls.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  AppColors.scaffoldBgc,
      appBar: myAppBar(),
      body:  Padding(
        padding: const EdgeInsets.
        symmetric(
       horizontal: 21,
        vertical: 39),
        child: Column(
          children: [
            const Row(mainAxisAlignment:
             MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(icon: Icons.male,
                text: "MALE",
                ),
                 BmiContainer(icon: Icons.female,
                text: "FEMALE",
                ),
              ],
            ),
            AppSize.h18,

            const BmiContainer(
              widthSize: double.infinity ,
            ),

             AppSize.h18,

             Row(mainAxisAlignment:
             MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(
                  text: "WEIGT",
                  smText: 60.toString(),
                ),
                 const BmiContainer(),
              ],
            ),

          ],
        ),
        
      ),
      bottomNavigationBar: 
      const CalculatorContainer(),
     
    );
  }


AppBar myAppBar() {
    return AppBar(centerTitle: true,
      backgroundColor:AppColors.appBarBgc ,
      title: const Text("BMI CALCULATOR",
       style:AppTextstyles.bmiTexstyle,
        ),
    );
  }
}

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
        child: Text("CALCULATOR",
        style: AppTextstyles.bmiTexstyle),
      ),
    );
  }
}

