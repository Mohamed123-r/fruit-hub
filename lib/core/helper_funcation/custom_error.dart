import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

void customError(BuildContext context, {required String massage}) {
  AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.error,
    title: S.of(context).generic_error,
    desc: massage,
    btnOk: CustomButton(
        title: S.of(context).ok,
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
    title: S.of(context).success,
    desc: massage,
    btnOk: CustomButton(
        title: S.of(context).ok,
        onPressed: () {
          Navigator.pop(context);
        }),
  ).show();
}
