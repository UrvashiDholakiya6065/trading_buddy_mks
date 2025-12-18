import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final String emptyMsg;
  final String invalidMsg;
  final String? pattern;
  final TextEditingController controller;
  final bool obscureText;
  final GlobalKey<FormFieldState> fieldKey;

  const CommonTextFormField({
    super.key,
    this.hintText = "",
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.emptyMsg = "",
    this.invalidMsg = "",
    this.pattern,
    required this.controller,
    required this.obscureText,
    required this.fieldKey,
  });

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    String showError = widget.emptyMsg;

    return TextFormField(
      key: widget.fieldKey,
      onChanged: (value) {
        print("The current value is: $value");
        value = "";
      },
      onTap: () {
        print("TextFormField was tapped!");
        widget.fieldKey.currentState?.reset();
      },
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) return showError;

        if (widget.pattern != null) {
          final regExp = RegExp(widget.pattern!);
          if (!regExp.hasMatch(value)) return widget.invalidMsg;
        }
        return null;
      },
      obscureText: widget.obscureText ? hide : false,
      textAlignVertical: TextAlignVertical.center,

      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        filled: true,
        fillColor: Color(0xFF323232),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(hide ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    hide = !hide;
                  });
                },
              )
            : null,
        errorStyle: TextStyle(height: 0),
      ),
    );
  }
}
