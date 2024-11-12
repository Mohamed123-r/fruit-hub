import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.title,
        required this.onPressed,
       });

  final Function() onPressed;
  final String title;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54,
      minWidth: double.infinity,
      color: AppColors.greenColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onPressed: onPressed,
      child:
           Text(
        title,
      ),
    );
  }
}

