import 'package:flutter/material.dart';

class AppTheme {
  // 🔹 Color principal del botón y acentos
  static const Color primaryColor = Color(0xFF007AFF);
  static const Color primaryLight = Color(0xFF4A90E2);
  static const Color backgroundColor = Color(0xFFF5F7FB);
  static const Color appBarColor = Color(0xFFE5E7EB); // gris claro
  static const Color textColor = Color(0xFF1C1C1E);

  // 🔹 Tema claro (puedes agregar un oscuro si lo deseas)
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 72, 70, 109),
      foregroundColor: Colors.white,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Textos
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: textColor,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontSize: 14,
      ),
      titleLarge: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    // Botones estándar
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    ),

    // Campos de texto
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryLight, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryColor, width: 1.5),
      ),
      labelStyle: const TextStyle(color: Colors.grey),
    ),

    // Iconos
    iconTheme: const IconThemeData(color: primaryColor),
  );
}
