import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final Icon? prefixIcon;
  final Color? fillColor;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputType? keyBoardType;
  final String? hintText;
  final FocusNode? focusNode;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final double? focusedBorderRadius;
  final double? enabledBorderRadius;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.prefixIcon,
    this.fillColor,
    required this.controller,
    this.obscureText,
    this.keyBoardType,
    this.hintText,
    this.focusNode,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.enabledBorderRadius,
    this.focusedBorderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyBoardType ?? TextInputType.text,
      cursorColor: Colors.black,
      maxLines: null,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: labelText ?? "",
        labelStyle: TextStyle(
          color: focusNode!.hasFocus ? Colors.black : Colors.grey,
        ),
        hintText: hintText ?? "",
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        fillColor: fillColor ?? Colors.white,
        filled: true,
        prefixIcon: prefixIcon ??
            const Icon(
              Icons.search_outlined,
            ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.white,
          ),
          borderRadius: BorderRadius.circular(focusedBorderRadius ?? 10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(enabledBorderRadius ?? 10),
        ),
      ),
    );
  }
}
