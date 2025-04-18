// import 'package:aplikasi_tiket_wisata/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tiket_wisata/pages/splash_screen.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const SplashPage(),
    );
  }
}
