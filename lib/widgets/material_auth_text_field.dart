import 'package:flutter/material.dart';
import 'package:materialauth/color/colors.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MaterialAuthTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final String obscureChar;

  const MaterialAuthTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.obscureChar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370.0,
      height: 60.0,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        cursorColor: MaterialAuth.endGradientBorder,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        obscureText: obscureText,
        obscuringCharacter: obscureChar,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: MaterialAuth.textColor),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
          border: GradientOutlineInputBorder(
            gradient: const LinearGradient(
              colors: <Color>[
                MaterialAuth.startGradientBorder,
                MaterialAuth.endGradientBorder,
              ],
            ),
            width: 3.0,
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: MaterialAuth.widgetBorder,
              width: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
