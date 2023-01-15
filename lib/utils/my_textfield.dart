import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText, label;
  final Widget prefixIcon, suffixIcon;
  final bool? obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.validator,
    required this.hintText,
    required this.label,
    required this.prefixIcon,
    required this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      validator: validator,
      cursorColor: Colors.orange,
      style: TextStyle(
        color: Colors.blue,
        letterSpacing: 1.3,
        fontFamily: "Raleway",
      ),
      decoration: InputDecoration(
        hintText: hintText,
        errorStyle: TextStyle(fontFamily: "Raleway"),
        hintStyle: TextStyle(color: Colors.blue),
        label: Text(label),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(40),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
