// ignore_for_file: use_build_context_synchronously

import 'package:aplikasi_tiket_wisata/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
// import 'package:aplikasi_tiket_wisata/pages/auth/login_page.dart';
import 'package:aplikasi_tiket_wisata/pages/home/home_page.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );

    // Contoh: langsung arahkan ke LoginPage untuk sementara
    // if (mounted) {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => const LoginPage()),
    //   );

    //   // Atau jika kamu mau ke Home langsung:
    //   // Navigator.of(context).pushReplacement(
    //   //   MaterialPageRoute(builder: (context) => const HomePage()),
    //   // );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: AppTheme.neoBrutalistBox(
            color: AppTheme.accentColor,
            borderRadius: 16,
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.travel_explore,
                size: 80,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(height: 16),
              Text(
                'EXPLORE',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor,
                    ),
              ),
              Text(
                'Tourism App',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.textColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
