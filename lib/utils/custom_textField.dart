import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  bool? obscureText;
  final String hintText;
  final Widget? prefixIcon, suffixIcon;

  CustomTextField({
    Key? key,
    required this.controller,
    this.validator,
    this.obscureText = false,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator ??
          (value) {
            if (value!.isEmpty) {
              return "Field must not be empty!";
            } else if (value.length < 8) {
              return "password should be at least 8 characters";
            }
            return null;
          },
      cursorColor: Colors.orange,
      obscureText: widget.obscureText!,
      style: TextStyle(
        color: Colors.blueGrey,
        fontFamily: "Raleway",
        letterSpacing: 1.3,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorStyle: TextStyle(fontFamily: "Raleway"),
        hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Raleway"),
        prefixIcon: widget.prefixIcon ??
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.lock,
                color: Colors.blueGrey,
              ),
            ),
        suffixIcon: widget.suffixIcon ??
            IconButton(
              onPressed: () {
                setState(() {
                  widget.obscureText = !widget.obscureText!;
                });
              },
              icon: Icon(widget.obscureText!
                  ? Icons.visibility_off
                  : Icons.visibility),
              color: Colors.blueGrey,
            ),
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
