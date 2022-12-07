import 'package:flutter/material.dart';
import 'package:materialauth/color/colors.dart';

class MaterialAuthAuthenticateButton extends StatelessWidget {
  final VoidCallback ontap;
  final String btnText;

  const MaterialAuthAuthenticateButton({
    Key? key,
    required this.ontap,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            MaterialAuth.startGradientButton,
            MaterialAuth.endGradientButton,
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          onTap: ontap,
          child: Center(
            child: Text(
              btnText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
