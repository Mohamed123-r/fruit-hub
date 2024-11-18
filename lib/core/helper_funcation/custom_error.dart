import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

void customError(BuildContext context, {required String massage}) {
  AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.error,
    title: 'Error',
    desc: massage,
    btnOk: CustomButton(
        title: 'Ok',
        onPressed: () {
          Navigator.pop(context);
        }),
  ).show();
}

void customSuccess(BuildContext context, {required String massage}) {
  AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.success,
    dialogBackgroundColor: AppColors.greenColor,
    title: 'Success',
    desc: massage,
    btnOk: CustomButton(
        title: 'Ok',
        onPressed: () {
          Navigator.pop(context);
        }),
  ).show();
}
