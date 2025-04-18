class Booking {
  final String id;
  final String attractionId;
  final String attractionName;
  final String attractionLocation;
  final String attractionImageUrl;
  final DateTime bookingDate;
  final DateTime visitDate;
  final int adultCount;
  final int childCount;
  final int totalPrice;
  final String paymentMethod;
  final String status; // pending, paid, completed, cancelled

  const Booking({
    required this.id,
    required this.attractionId,
    required this.attractionName,
    required this.attractionLocation,
    required this.attractionImageUrl,
    required this.bookingDate,
    required this.visitDate,
    required this.adultCount,
    required this.childCount,
    required this.totalPrice,
    required this.paymentMethod,
    required this.status,
  });
}
