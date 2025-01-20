import 'package:flutter/material.dart';

class FormWidgets {
  //Text
  static getTextFormField({
    required TextEditingController controller,
    required bool? formEnabled,
    Widget? icon,
    Color? iconColor = Colors.white,
    Widget? prefix,
    String? prefixText,
    Widget? prefixIcon,
    Color? prefixIconColor = Colors.white,
    Widget? suffix,
    String? suffixText,
    Widget? suffixIcon,
    Color? suffixIconColor = Colors.white,
    Widget? helper,
    String? helperText,
    TextStyle? helperStyle = const TextStyle(color: Colors.white),
    Widget? label,
    String? labelText,
    TextStyle? labelStyle = const TextStyle(color: Colors.white),
    String? hintText,
    TextStyle? hintStyle = const TextStyle(color: Colors.white),
    Widget? error,
    String? errorText,
    TextStyle? errorStyle =
        const TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextFormField(
        enabled: formEnabled,
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: (icon != null) ? icon : null,
          iconColor: iconColor,
          prefix: (prefix != null) ? prefix : null,
          prefixText: (prefixText != null) ? prefixText : null,
          prefixIcon: (prefixIcon != null)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: prefixIcon,
                )
              : null,
          prefixIconColor: prefixIconColor,
          suffix: (suffix != null) ? suffix : null,
          suffixText: (suffixText != null) ? suffixText : null,
          suffixIcon: (suffixIcon != null)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: suffixIcon,
                )
              : null,
          suffixIconColor: suffixIconColor,
          helper: (helper != null) ? helper : null,
          helperText: (helperText != null) ? helperText : null,
          helperStyle: helperStyle,
          label: (label != null) ? label : null,
          labelText: (labelText != null) ? labelText : null,
          labelStyle: labelStyle,
          hintText: (hintText != null) ? hintText : null,
          hintStyle: hintStyle,
          error: (error != null) ? error : null,
          errorText: (errorText != null) ? errorText : null,
          errorStyle: errorStyle,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.amber, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
        ),
      ),
    );
  }
  // CheckBoxs

  // Switch

  // Radio

  // Dropdown
}
