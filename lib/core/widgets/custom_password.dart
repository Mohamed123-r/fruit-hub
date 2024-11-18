import 'package:flutter/material.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'custom_text_field.dart';

class CustomPassword extends StatefulWidget {
  const CustomPassword({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<CustomPassword> createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onSaved: widget.onSaved,
      obscureText: isObscure,
      hintText: S.of(context).password,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        icon: Icon(
          isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        ),
      ),
    );
  }
}
