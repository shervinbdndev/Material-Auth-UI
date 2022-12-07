import 'dart:io';
import 'package:flutter/material.dart';
import 'package:materialauth/pages/login_page.dart';

void main() {
  if (Platform.isAndroid) {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  } else {
    exit(0);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material Auth',
      debugShowCheckedModeBanner: !true,
      home: MaterialLoginPage(),
    );
  }
}
