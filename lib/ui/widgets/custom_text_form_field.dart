import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.hint,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(height: 6),
          TextFormField(
            obscureText: obscureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: primaryColor))),
          ),
        ],
      ),
    );
  }
}
