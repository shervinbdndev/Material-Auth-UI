import 'package:flutter/material.dart';
import 'package:materialauth/color/colors.dart';

class Mouz extends StatelessWidget {
  const Mouz({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MaterialAuth.background,
      body: Center(
        child: Text(
          'Mouz🍌',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 70.0,
          ),
        ),
      ),
    );
  }
}
