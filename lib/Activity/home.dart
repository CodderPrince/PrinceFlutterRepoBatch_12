import 'package:flutter/material.dart';
import '../data/CourseCard.dart';

class Course {
  final String bannerImageUrl;
  final String batch;
  final String seatsRemaining;
  final String daysRemaining;
  final String title;
  final String buttonText;

  Course({
    required this.bannerImageUrl,
    required this.batch,
    required this.seatsRemaining,
    required this.daysRemaining,
    required this.title,
    required this.buttonText,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> courses = [
      Course(
        bannerImageUrl:
            'https://github.com/CodderPrince/Images/raw/main/Assets/image_2025-09-20_21-16-18.png',
        batch: 'ব্যাচ ১১',
        seatsRemaining: '৫ সিট বাকি',
        daysRemaining: '৩ দিন বাকি',
        title: 'Full Stack Web Development with JavaScript (MERN)',
        buttonText: 'বিস্তারিত দেখি',
      ),
      Course(
        bannerImageUrl:
            'https://github.com/CodderPrince/Images/raw/main/Assets/image_2025-09-20_21-16-59.png',
        batch: 'ব্যাচ ৬',
        seatsRemaining: '৮৬ সিট বাকি',
        daysRemaining: '৪৩ দিন বাকি',
        title: 'Full Stack Web Development with Python, Django & React',
        buttonText: 'বিস্তারিত দেখি',
      ),
      Course(
        bannerImageUrl:
            'https://github.com/CodderPrince/Images/raw/main/Assets/image_2025-09-20_21-17-34.png',
        batch: 'ব্যাচ ৭',
        seatsRemaining: '৭২ সিট বাকি',
        daysRemaining: '৩৯ দিন বাকি',
        title: 'Full Stack Web Development with ASP.Net Core',
        buttonText: 'বিস্তারিত দেখি',
      ),
      Course(
        bannerImageUrl:
            'https://github.com/CodderPrince/Images/raw/main/Assets/image_2025-09-20_21-17-22.png',
        batch: 'ব্যাচ ১৩',
        seatsRemaining: '৬৬ সিট বাকি',
        daysRemaining: '৪৬ দিন বাকি',
        title: 'SQA: Manual & Automated Testing',
        buttonText: 'বিস্তারিত দেখি',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Courses',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,

            mainAxisExtent: 260.0,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(course: courses[index]);
          },
        ),
      ),
    );
  }
}
