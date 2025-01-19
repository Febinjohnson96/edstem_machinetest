import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({super.key, required this.controller, this.onchange});
  final TextEditingController controller;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onchange?.call(value),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        hintText: 'Enter text',
      ),
    );
  }
}
