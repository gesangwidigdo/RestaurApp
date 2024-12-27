import 'package:flutter/material.dart';

var mainTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: const Color(0xFFFF9800), // Oranye sebagai warna utama
  scaffoldBackgroundColor: const Color(0xFFFFFFFF), // Latar belakang putih
  cardColor: const Color(0xFFF5F5F5), // Warna kartu (abu-abu muda)
  dividerColor: const Color(0xFFBDBDBD), // Garis pemisah (abu-abu)
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF212121)), // Teks besar (hitam)
    bodyMedium:
        TextStyle(color: Color(0xFF424242)), // Teks medium (abu-abu tua)
    bodySmall: TextStyle(color: Color(0xFF757575)), // Teks kecil (abu-abu)
    headlineLarge:
        TextStyle(color: Color(0xFF212121)), // Headline besar (hitam)
    headlineMedium: TextStyle(color: Color(0xFF424242)), // Headline medium
    headlineSmall: TextStyle(color: Color(0xFF757575)), // Headline kecil
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFFFF9800), // Ikon utama (oranye)
    size: 24, // Ukuran ikon default
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFF9800), // AppBar latar belakang
    foregroundColor: Color(0xFFFFFFFF), // Teks AppBar (putih)
    elevation: 4, // Bayangan AppBar
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFFF9800), // Warna latar tombol oranye
      foregroundColor: const Color(0xFFFFFFFF), // Warna teks tombol putih
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold), // Gaya teks tombol
      padding: const EdgeInsets.symmetric(
          vertical: 12, horizontal: 20), // Padding tombol
    ),
  ),

  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFFFF9800), // Tombol utama (oranye)
    disabledColor: Color(0xFFF5F5F5), // Tombol dinonaktifkan (abu muda)
    textTheme: ButtonTextTheme.primary, // Teks tombol mengikuti warna utama
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color(0xFFF5F5F5), // Background input (abu muda)
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color(0xFFBDBDBD)), // Border input (abu)
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color(0xFFBDBDBD)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(color: Color(0xFFFF9800)), // Fokus input (oranye)
    ),
    labelStyle: TextStyle(color: Color(0xFF757575)), // Label teks
    hintStyle: TextStyle(color: Color(0xFFBDBDBD)), // Hint teks
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFFFFFFF), // Latar belakang BottomNavigationBar
    selectedItemColor: Color(0xFFFF9800), // Item aktif (oranye)
    unselectedItemColor: Color(0xFF757575), // Item tidak aktif (abu-abu)
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.orange,
  ).copyWith(
    secondary: const Color(0xFFFFC107), // Warna sekunder (kuning oranye)
    background: const Color(0xFFFFFFFF), // Latar belakang utama (putih)
    surface: const Color(0xFFF5F5F5), // Latar elemen (abu-abu muda)
    error: const Color(0xFFFF5722), // Warna error (merah oranye)
    onPrimary: const Color(0xFFFFFFFF), // Teks pada warna utama (putih)
    onSecondary: const Color(0xFF212121), // Teks pada warna sekunder (hitam)
    onError: const Color(0xFFFFFFFF), // Teks pada warna error (putih)
  ),
  useMaterial3: true,
);
