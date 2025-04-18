import 'package:flutter/material.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.neoBrutalistBox(
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search destinations...',
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          suffixIcon: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: const Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
