import 'dart:io';
import 'package:flutter/material.dart';
import 'package:materialauth/pages/mouz.dart';
import 'package:materialauth/color/colors.dart';
import 'package:materialauth/pages/signup_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:materialauth/widgets/material_auth_text_field.dart';
import 'package:materialauth/widgets/material_auth_back_button.dart';
import 'package:materialauth/widgets/material_auth_wide_button.dart';
import 'package:materialauth/widgets/material_auth_authenticate_button.dart';

class MaterialLoginPage extends StatefulWidget {
  const MaterialLoginPage({super.key});

  @override
  State<MaterialLoginPage> createState() => _MaterialLoginPageState();
}

class _MaterialLoginPageState extends State<MaterialLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MaterialAuth.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 35.0,
                  left: 15.0,
                ),
                child: Row(
                  children: <Widget>[
                    MaterialAuthBackButton(
                      ontap: () async {
                        exit(0);
                      },
                    ),
                    const SizedBox(width: 15.0),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 60.0,
                  right: 110.0,
                ),
                child: Text(
                  'Login with one of the following options.',
                  style: TextStyle(
                    color: MaterialAuth.textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialAuthWideButton(
                      icon: FontAwesomeIcons.google,
                      iconSize: 22.0,
                      ontap: () {},
                    ),
                    const SizedBox(width: 30.0),
                    MaterialAuthWideButton(
                      icon: FontAwesomeIcons.apple,
                      iconSize: 25.0,
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Mouz(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Column(
                  children: <Widget>[
                    const MaterialAuthTextField(
                      hintText: 'Email',
                      labelText: 'Email',
                      obscureText: false,
                      obscureChar: '.',
                    ),
                    const SizedBox(height: 30.0),
                    const MaterialAuthTextField(
                      hintText: 'Password',
                      labelText: 'Password',
                      obscureText: true,
                      obscureChar: '*',
                    ),
                    const SizedBox(height: 30.0),
                    MaterialAuthAuthenticateButton(
                      ontap: () async {},
                      btnText: 'Login',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: MaterialAuth.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MaterialSignUpPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
