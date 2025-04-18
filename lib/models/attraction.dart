import 'package:aplikasi_tiket_wisata/models/category.dart';
import 'package:aplikasi_tiket_wisata/models/facility.dart';
import 'package:aplikasi_tiket_wisata/models/review.dart';

class Attraction {
  final String id;
  final String name;
  final String description;
  final String location;
  final double latitude;
  final double longitude;
  final int price;
  final String openingHours;
  final String closingHours;
  final Category category;
  final List<String> imageUrls;
  final List<Facility> facilities;
  final double rating;
  final List<Review> reviews;

  const Attraction({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.price,
    required this.openingHours,
    required this.closingHours,
    required this.category,
    required this.imageUrls,
    required this.facilities,
    required this.rating,
    required this.reviews,
  });
}
