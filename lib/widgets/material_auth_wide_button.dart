import 'package:flutter/material.dart';
import 'package:materialauth/color/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaterialAuthWideButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback ontap;

  const MaterialAuthWideButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 60,
      decoration: BoxDecoration(
        color: MaterialAuth.widgetBackground,
        border: Border.all(
          width: 2.0,
          color: MaterialAuth.widgetBorder,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          onTap: ontap,
          child: Center(
            child: FaIcon(
              icon,
              color: Colors.white,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
