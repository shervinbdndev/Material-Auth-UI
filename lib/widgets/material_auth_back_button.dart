import 'package:flutter/material.dart';
import 'package:materialauth/color/colors.dart';

class MaterialAuthBackButton extends StatelessWidget {
  final VoidCallback ontap;

  const MaterialAuthBackButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: MaterialAuth.background,
        border: Border.all(
          width: 2.0,
          color: MaterialAuth.widgetBorder,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: ontap,
          borderRadius: BorderRadius.circular(12.0),
          child: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
