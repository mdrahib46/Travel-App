import 'package:flutter/material.dart';
import 'package:travelapp/screens/landign_page.dart';

class TravelApp extends StatelessWidget {
   TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: _buildElevatedButton(),
        scaffoldBackgroundColor: const Color.fromRGBO(64, 147, 206, 100),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.grey),
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIconColor: Colors.grey,
          enabledBorder: _buildOutlineInputBorder(),
          focusedBorder: _buildOutlineInputBorder()
        )
      ),
      home: const LandingPage(),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white)
        );
  }

  ElevatedButtonThemeData _buildElevatedButton() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromWidth(double.maxFinite),
        backgroundColor: const Color.fromRGBO(64, 147, 206, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
