import 'package:flutter/material.dart';
import 'package:aplikasi_tiket_wisata/models/category.dart';
import 'package:aplikasi_tiket_wisata/pages/category/category_attractions_page.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryAttractionsPage(category: category),
          ),
        );
      },
      child: Container(
        decoration: AppTheme.neoBrutalistBox(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: category.color.withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Icon(
                category.icon,
                size: 32,
                color: category.color,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              category.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
