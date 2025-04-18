import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:aplikasi_tiket_wisata/data/dummy_data.dart';
// import 'package:aplikasi_tiket_wisata/models/booking.dart';
import 'package:aplikasi_tiket_wisata/theme/app_theme.dart';

class TicketDetailPage extends StatelessWidget {
  final String bookingId;

  const TicketDetailPage({
    super.key,
    required this.bookingId,
  });

  @override
  Widget build(BuildContext context) {
    final booking = DummyData.getBookingById(bookingId);
    final attraction = DummyData.getAttractionById(booking.attractionId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: AppTheme.neoBrutalistBox(
                  color: Colors.white,
                  borderRadius: 12,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.network(
                        booking.attractionImageUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  booking.attractionName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: booking.status == 'upcoming'
                                      ? Colors.blue.withOpacity(0.2)
                                      : booking.status == 'completed'
                                          ? Colors.green.withOpacity(0.2)
                                          : Colors.red.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: booking.status == 'upcoming'
                                        ? Colors.blue
                                        : booking.status == 'completed'
                                            ? Colors.green
                                            : Colors.red,
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  booking.status.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: booking.status == 'upcoming'
                                        ? Colors.blue
                                        : booking.status == 'completed'
                                            ? Colors.green
                                            : Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 16,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  booking.attractionLocation,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Divider(),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildInfoColumn(
                                context,
                                Icons.calendar_today,
                                'Visit Date',
                                DateFormat('EEE, d MMM yyyy')
                                    .format(booking.visitDate),
                              ),
                              _buildInfoColumn(
                                context,
                                Icons.people,
                                'Visitors',
                                '${booking.adultCount + booking.childCount} people',
                              ),
                              _buildInfoColumn(
                                context,
                                Icons.confirmation_number,
                                'Ticket ID',
                                booking.id.substring(4, 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Ticket Information',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.neoBrutalistBox(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    _buildDetailRow('Ticket ID', booking.id),
                    _buildDetailRow('Status', booking.status.toUpperCase(),
                        valueColor: booking.status == 'upcoming'
                            ? Colors.blue
                            : booking.status == 'completed'
                                ? Colors.green
                                : Colors.red),
                    _buildDetailRow(
                        'Visit Date',
                        DateFormat('EEEE, d MMMM yyyy')
                            .format(booking.visitDate)),
                    _buildDetailRow('Adult Tickets', '${booking.adultCount}'),
                    _buildDetailRow('Child Tickets', '${booking.childCount}'),
                    const Divider(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Rp ${booking.totalPrice}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'QR Code',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: AppTheme.neoBrutalistBox(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.qr_code,
                          size: 150,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Show this QR code at the entrance',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.neoBrutalistBox(
                  color: AppTheme.accentColor.withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Important Information',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Please arrive 15 minutes before your scheduled time. Children under 3 years old can enter for free.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              if (booking.status == 'upcoming')
                ElevatedButton(
                  onPressed: () {
                    // Show cancel confirmation dialog
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Cancel Booking'),
                        content: const Text(
                            'Are you sure you want to cancel this booking?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              // Handle cancellation
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Booking cancelled successfully'),
                                ),
                              );
                              Navigator.pop(context);
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Cancel Booking'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(
      BuildContext context, IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppTheme.primaryColor,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
