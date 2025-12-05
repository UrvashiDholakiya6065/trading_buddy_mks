import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextFormFieldClass extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final String emptyMsg;
  final String invalidMsg;
  final String? pattern;
  final String? controller;

  // final String controller;
  const CommonTextFormFieldClass({
    super.key,
    this.hintText = "",
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.emptyMsg = "This field is required",
    this.invalidMsg = "Invalid input",
    this.pattern,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,

      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) return emptyMsg;

        if (pattern != null) {
          final regExp = RegExp(pattern!);
          if (!regExp.hasMatch(value)) return invalidMsg;
        }

        return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF323232),
        prefixIcon: prefixIcon,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white24),
        ),
        errorBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
