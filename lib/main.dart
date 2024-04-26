// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_sau_project/views/splash_screen_ui.dart';
import 'views/login_ui.dart';
import 'views/register_ui.dart';
import 'package:uuid/uuid.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData( 
        textTheme: GoogleFonts.kanitTextTheme()
      ),
    );
  }
}