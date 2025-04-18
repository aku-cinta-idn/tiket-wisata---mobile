import 'package:flutter/material.dart';
import 'package:aplikasi_tiket_wisata/models/attraction.dart';
import 'package:aplikasi_tiket_wisata/models/booking.dart';
import 'package:aplikasi_tiket_wisata/models/category.dart';
import 'package:aplikasi_tiket_wisata/models/facility.dart';
import 'package:aplikasi_tiket_wisata/models/review.dart';

class DummyData {
  // Categories
  static final List<Category> categories = [
    const Category(
      id: '1',
      name: 'Beach',
      icon: Icons.beach_access,
      color: Color(0xFFFF6B6B),
    ),
    const Category(
      id: '2',
      name: 'Mountain',
      icon: Icons.landscape,
      color: Color(0xFF4ECDC4),
    ),
    const Category(
      id: '3',
      name: 'History',
      icon: Icons.history_edu,
      color: Color(0xFFFFE66D),
    ),
    const Category(
      id: '4',
      name: 'Education',
      icon: Icons.school,
      color: Color(0xFF6B5B95),
    ),
    const Category(
      id: '5',
      name: 'Waterfall',
      icon: Icons.water,
      color: Color(0xFF1A535C),
    ),
    const Category(
      id: '6',
      name: 'Park',
      icon: Icons.park,
      color: Color(0xFF4CB944),
    ),
    const Category(
      id: '7',
      name: 'Museum',
      icon: Icons.museum,
      color: Color(0xFFF78154),
    ),
    const Category(
      id: '8',
      name: 'Religious',
      icon: Icons.temple_buddhist,
      color: Color(0xFF7B506F),
    ),
  ];

  // Facilities
  static final List<Facility> beachFacilities = [
    const Facility(name: 'Free WiFi', icon: Icons.wifi),
    const Facility(name: 'Parking', icon: Icons.local_parking),
    const Facility(name: 'Restaurant', icon: Icons.restaurant),
    const Facility(name: 'Toilet', icon: Icons.wc),
  ];

  static final List<Facility> mountainFacilities = [
    const Facility(name: 'Parking', icon: Icons.local_parking),
    const Facility(name: 'Tour Guide', icon: Icons.person),
    const Facility(name: 'Camping', icon: Icons.night_shelter),
    const Facility(name: 'First Aid', icon: Icons.medical_services),
  ];

  static final List<Facility> templeFacilities = [
    const Facility(name: 'Parking', icon: Icons.local_parking),
    const Facility(name: 'Tour Guide', icon: Icons.person),
    const Facility(name: 'Restaurant', icon: Icons.restaurant),
    const Facility(name: 'Toilet', icon: Icons.wc),
    const Facility(name: 'Museum', icon: Icons.museum),
  ];

  // Reviews
  static final List<Review> kutaBeachReviews = [
    Review(
      id: '1',
      userId: '1',
      userName: 'John Doe',
      userAvatar: 'https://randomuser.me/api/portraits/men/32.jpg',
      rating: 4.5,
      comment:
          'Great place to visit! The beach is beautiful and the sunset is amazing.',
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Review(
      id: '2',
      userId: '2',
      userName: 'Jane Smith',
      userAvatar: 'https://randomuser.me/api/portraits/women/44.jpg',
      rating: 5.0,
      comment: 'One of the best beaches in Bali. Highly recommended!',
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
    ),
  ];

  static final List<Review> bromoReviews = [
    Review(
      id: '3',
      userId: '3',
      userName: 'Michael Johnson',
      userAvatar: 'https://randomuser.me/api/portraits/men/45.jpg',
      rating: 5.0,
      comment:
          'The sunrise view from Mount Bromo is breathtaking. Worth waking up early for!',
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Review(
      id: '4',
      userId: '4',
      userName: 'Emily Wilson',
      userAvatar: 'https://randomuser.me/api/portraits/women/22.jpg',
      rating: 4.0,
      comment:
          'Amazing experience but it can get very cold in the morning, so bring warm clothes.',
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
    ),
  ];

  static final List<Review> borobudurReviews = [
    Review(
      id: '5',
      userId: '5',
      userName: 'David Brown',
      userAvatar: 'https://randomuser.me/api/portraits/men/67.jpg',
      rating: 5.0,
      comment:
          'Incredible historical site. The architecture and carvings are amazing.',
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
    ),
    Review(
      id: '6',
      userId: '6',
      userName: 'Sarah Lee',
      userAvatar: 'https://randomuser.me/api/portraits/women/33.jpg',
      rating: 4.5,
      comment:
          'Beautiful temple with rich history. Best to visit early in the morning to avoid crowds.',
      createdAt: DateTime.now().subtract(const Duration(days: 20)),
    ),
  ];

  // Attractions
  static final List<Attraction> attractions = [
    Attraction(
      id: '1',
      name: 'Kuta Beach',
      description:
          'Kuta Beach is a popular tourist destination in Bali, Indonesia. It is known for its beautiful sandy beaches, stunning sunsets, and vibrant nightlife. The beach is perfect for swimming, surfing, and sunbathing. There are also many restaurants, bars, and shops nearby.',
      location: 'Bali, Indonesia',
      latitude: -8.7184,
      longitude: 115.1686,
      price: 50000,
      openingHours: '09:00',
      closingHours: '18:00',
      category: categories.firstWhere((c) => c.id == '1'),
      imageUrls: [
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      ],
      facilities: beachFacilities,
      rating: 4.8,
      reviews: kutaBeachReviews,
    ),
    Attraction(
      id: '2',
      name: 'Sanur Beach',
      description:
          'Sanur Beach is a beautiful white sand beach located on the eastern side of Bali. It is known for its calm waters, making it perfect for swimming and various water sports. The beach offers a more relaxed atmosphere compared to other beaches in Bali.',
      location: 'Bali, Indonesia',
      latitude: -8.6780,
      longitude: 115.2635,
      price: 45000,
      openingHours: '08:00',
      closingHours: '18:00',
      category: categories.firstWhere((c) => c.id == '1'),
      imageUrls: [
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      ],
      facilities: beachFacilities,
      rating: 4.6,
      reviews: kutaBeachReviews,
    ),
    Attraction(
      id: '3',
      name: 'Mount Bromo',
      description:
          'Mount Bromo is an active volcano and part of the Tengger massif in East Java, Indonesia. It is one of the most visited tourist attractions in East Java and offers breathtaking views, especially during sunrise. The volcano sits in the middle of a vast plain called the Sea of Sand.',
      location: 'East Java, Indonesia',
      latitude: -7.9425,
      longitude: 112.9530,
      price: 75000,
      openingHours: '05:00',
      closingHours: '17:00',
      category: categories.firstWhere((c) => c.id == '2'),
      imageUrls: [
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      ],
      facilities: mountainFacilities,
      rating: 4.7,
      reviews: bromoReviews,
    ),
    Attraction(
      id: '4',
      name: 'Borobudur Temple',
      description:
          'Borobudur is a 9th-century Mahayana Buddhist temple in Central Java, Indonesia. It is the world\'s largest Buddhist temple and a UNESCO World Heritage Site. The temple consists of nine stacked platforms, six square and three circular, topped by a central dome.',
      location: 'Central Java, Indonesia',
      latitude: -7.6079,
      longitude: 110.2038,
      price: 50000,
      openingHours: '06:00',
      closingHours: '17:00',
      category: categories.firstWhere((c) => c.id == '3'),
      imageUrls: [
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      ],
      facilities: templeFacilities,
      rating: 4.9,
      reviews: borobudurReviews,
    ),
  ];

  // Get attractions by category
  static List<Attraction> getAttractionsByCategory(String categoryId) {
    return attractions.where((a) => a.category.id == categoryId).toList();
  }

  // Get attraction by id
  static Attraction getAttractionById(String id) {
    return attractions.firstWhere((a) => a.id == id);
  }

  // Bookings
  static final List<Booking> bookings = [
    Booking(
      id: 'TIX-1234567890',
      attractionId: '1',
      attractionName: 'Kuta Beach',
      attractionLocation: 'Bali, Indonesia',
      attractionImageUrl:
          'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      bookingDate: DateTime.now().subtract(const Duration(days: 2)),
      visitDate: DateTime.now().add(const Duration(days: 5)),
      adultCount: 2,
      childCount: 1,
      totalPrice: 150000,
      paymentMethod: 'QRIS',
      status: 'upcoming',
    ),
    Booking(
      id: 'TIX-0987654321',
      attractionId: '4',
      attractionName: 'Borobudur Temple',
      attractionLocation: 'Central Java, Indonesia',
      attractionImageUrl:
          'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      bookingDate: DateTime.now().subtract(const Duration(days: 5)),
      visitDate: DateTime.now().add(const Duration(days: 15)),
      adultCount: 1,
      childCount: 0,
      totalPrice: 50000,
      paymentMethod: 'Bank Transfer',
      status: 'upcoming',
    ),
    Booking(
      id: 'TIX-5678901234',
      attractionId: '3',
      attractionName: 'Mount Bromo',
      attractionLocation: 'East Java, Indonesia',
      attractionImageUrl:
          'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      bookingDate: DateTime.now().subtract(const Duration(days: 20)),
      visitDate: DateTime.now().subtract(const Duration(days: 10)),
      adultCount: 2,
      childCount: 2,
      totalPrice: 200000,
      paymentMethod: 'Credit Card',
      status: 'completed',
    ),
  ];

  // Get bookings by status
  static List<Booking> getBookingsByStatus(String status) {
    return bookings.where((b) => b.status == status).toList();
  }

  // Get booking by id
  static Booking getBookingById(String id) {
    return bookings.firstWhere((b) => b.id == id);
  }
}
