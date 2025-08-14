import 'package:flutter/material.dart';

Widget customTextField({
  required String label,
  required String hint,
  IconData? prefixIcon,
  bool isPassword = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: isPassword ? const Icon(Icons.visibility_off) : null,
      ),
    ),
  );
}
