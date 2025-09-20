import 'package:flutter/material.dart';
import '../Activity/home.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              course.bannerImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Failed to load image for ${course.title}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _buildInfoChip(Icons.bookmark, course.batch)),
                const SizedBox(width: 4.0),
                Expanded(
                  child: _buildInfoChip(Icons.person, course.seatsRemaining),
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: _buildInfoChip(
                    Icons.access_time,
                    course.daysRemaining,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              course.title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          // "View Details" Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement navigation or other action on button tap
                print('View details for ${course.title}');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E88E5),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                elevation: 2.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    course.buttonText,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.arrow_forward_ios, size: 14.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 10.0, color: Colors.grey[600]),
        const SizedBox(width: 4.0),
        Flexible(
          child: Text(
            text,
            style: TextStyle(fontSize: 10.0, color: Colors.grey[700]),
          ),
        ),
      ],
    );
  }
}
