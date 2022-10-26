import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final int maxLines;
  final VoidCallback ? onTap;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.prefixIconData,
    this.suffixIconData,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: Colors.black,
      child: SizedBox(
        height: 60,
        child: TextFormField(

          controller: controller,
          decoration: InputDecoration(
            filled: true,
              fillColor: Colors.white,
              suffixIcon: GestureDetector(
                onTap: onTap,
                child: Icon(
                  suffixIconData,
                  size: 10,

                ),
              ),

              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.black12
              ),

              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ))),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'Enter your $hintText';
            }
            return null;
          },
          maxLines: maxLines,
        ),
      ),
    );
  }
}